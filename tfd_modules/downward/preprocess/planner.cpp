/* Main file, keeps all important variables.
 * Calls functions from "helper_functions" to read in input (variables, operators, 
 * goals, initial state),
 * then calls functions to build causal graph, domain_transition_graphs and 
 * successor generator
 * finally prints output to file "output"
 */

#include "helper_functions.h"
#include "successor_generator.h"
#include "causal_graph.h"
#include "domain_transition_graph.h"
#include "state.h"
#include "operator.h"
#include "axiom.h"
#include "variable.h"
#include "module.h"
#include <iostream>
#include <cstring>
using namespace std;

int main(int argc, const char **argv) {

    ifstream file("../../benchmarks/modules-test/output-modules.sas");
    if(argc == 2 && strcmp(argv[1], "-eclipserun") == 0) {
        cin.rdbuf(file.rdbuf());
        argc = 1;
    }

    streambuf* old_cout = cout.rdbuf();
    cout.rdbuf(cerr.rdbuf());

    vector<Variable *> variables;
    vector<Variable> internal_variables;
    State initial_state;
    vector<pair<Variable *, int> > goals;
    vector<Operator> operators;
    vector<Axiom_relational> axioms_rel;
    vector<Axiom_functional> axioms_func;
    vector<DomainTransitionGraph*> transition_graphs;
    vector<string> moduleInits; // dont even bother to interpret these - we dont use them
    vector<string> moduleExits; // dont even bother to interpret these - we dont use them
    vector<string> subplanGenerators;
    vector<ConditionModule> condModules;
    vector<EffectModule> effectModules;
    vector<ConditionModule> costModules; //Hacky, reuse ConditionModule here
    vector<GroundingModule> groundingModules;
    vector<TranslatePredicate> predicateTranslations;
    vector<TranslateFunction> functionTranslations;
    vector<string> predConstants;
    vector<string> numConstants;
    vector<string> objects;
    vector<string> oplinits;

    if(argc != 1) {
        cout << "*** do not perform relevance analysis ***" << endl;
        g_do_not_prune_variables = true;
    }

    read_preprocessed_problem_description(cin, internal_variables, variables,
            initial_state, goals, operators, axioms_rel, axioms_func,
            moduleInits, moduleExits, subplanGenerators, condModules, effectModules,
            costModules, groundingModules, predicateTranslations, functionTranslations,
            predConstants, numConstants, objects, oplinits);


    //  for (int i = 0; i< operators.size(); i++)
    //      operators[i].dump();

    cout << "Building causal graph..." << endl;
    CausalGraph
        causal_graph(variables, operators, axioms_rel, axioms_func, goals);
    const vector<Variable *> &ordering = causal_graph.get_variable_ordering();
    //  cout << "ordering:" << endl;
    //  for(int i=0; i< ordering.size(); i++) {
    //    cout << ordering[i]->get_name() << endl;
    //  }
    bool cg_acyclic = causal_graph.is_acyclic();

    // Remove unnecessary effects from operators and axioms, then remove
    // operators and axioms without effects.
    strip_operators(operators);
    strip_Axiom_relationals(axioms_rel);
    strip_Axiom_functionals(axioms_func);

    // dump_preprocessed_problem_description(variables, initial_state, goals,
    //     operators, axioms_rel, axioms_func);

    cout << "Building domain transition graphs..." << endl;
    build_DTGs(ordering, operators, axioms_rel, axioms_func, transition_graphs);
    //  dump_DTGs(ordering, transition_graphs);
    bool solveable_in_poly_time = false;
    if(cg_acyclic)
        solveable_in_poly_time = are_DTGs_strongly_connected(transition_graphs);
    //TODO: genauer machen? (highest level var muss nicht scc sein...gemacht)
    //nur Werte, die wichtig sind fuer drunterliegende vars muessen in scc sein
    cout << "solveable in poly time " << solveable_in_poly_time << endl;
    cout << "Building successor generator..." << endl;
    SuccessorGenerator successor_generator(ordering, operators);
    //  successor_generator.dump();

    // causal_graph.dump();


    cout << "Writing output..." << endl;
    ostream out(old_cout);
    generate_cpp_input(solveable_in_poly_time, ordering,
            moduleInits, moduleExits,
            subplanGenerators, condModules, effectModules, costModules, groundingModules,
            predicateTranslations, functionTranslations, predConstants,
            numConstants,
            initial_state, goals,
            operators, axioms_rel, axioms_func, successor_generator,
            transition_graphs, causal_graph,
            objects, oplinits, out);
    cout << "done" << endl << endl;
}
