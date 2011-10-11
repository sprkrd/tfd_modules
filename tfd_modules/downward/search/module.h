#ifndef MODULE_H_
#define MODULE_H_

#include <vector>
#include <string>
#include <iostream>
#include <fstream>
#include "pddlModuleLoaderLDL.h"
#include "tfd_modules/module_api/pddlModuleTypes.h"
#include <tr1/unordered_map>
#include <tr1/tuple>
#include <string.h>
using namespace std;
using namespace modules;

class TimeStampedState;
struct PlanStep;

class Module
{
    public:
        string libCall;
        //string function_name;
        //string lib;
        ParameterList params;

        Module(istream &in);
        Module(string _libCall) :
            libCall(_libCall)
        {
        }
        Module()
        {
        }
        virtual ~Module();

        virtual void dump();
};

class ConditionModule: public Module
{
    public:
        int var;

        conditionCheckerType checkCondition;

        ConditionModule(istream &in);
        
        virtual void dump();
};

class EffectModule: public Module
{
    public:
        string internal_name;
        vector<int> writtenVars;

        applyEffectType applyEffect;

        EffectModule(istream &in);
        
        virtual void dump();
};

class CostModule: public Module
{
    public:
        int var;

        conditionCheckerType checkCost;

        CostModule(istream &in);
        
        virtual void dump();
};

class InitModule: public Module
{
    public:
        vector<string> parameters;

        InitModule(istream &in);
        void execInit();

        moduleInitType initModule;
};

// Module Interfacing functions and data
void dump_modules();

// modules
extern const TimeStampedState* g_modulecallback_state;
extern map<int, ConditionModule*> g_condition_modules;
extern vector<EffectModule *> g_effect_modules;
extern map<int, CostModule*> g_cost_modules;
extern vector<InitModule *> g_init_modules;

// subplan generation
typedef tr1::tuple<Module*, Module*, Module*> SubplanModuleSet;
extern vector<SubplanModuleSet> g_subplan_modules;

void handleSubplans(const vector<PlanStep> & plan);

// callback interface
typedef pair<int, int> VarVal;
typedef tr1::unordered_map<string, VarVal> PredicateMapping;
typedef tr1::unordered_map<string, int> FunctionMapping;

extern PredicateMapping g_pred_mapping;
extern FunctionMapping g_func_mapping;

extern modules::PredicateList g_pred_constants;
extern modules::NumericalFluentList g_func_constants;

// callback functions
bool compareContext(modules::plannerContextPtr p1,
        modules::plannerContextPtr p2); // (*plannerContextCompareType)
bool getPreds(modules::PredicateList* & predicateList); // (*predicateCallbackType)
bool getFuncs(modules::NumericalFluentList* & fluentList); // (*numericalFluentCallbackType)

// Module loader
extern PDDLModuleLoader *g_module_loader;

// Parsing
void read_pddl_translation(istream &in);
void read_constant_facts(istream& in);
void read_modules(istream &in);

#endif /* MODULE_H_ */
