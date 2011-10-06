#ifndef BEST_FIRST_SEARCH_H
#define BEST_FIRST_SEARCH_H

#include <vector>
#include <queue>
#include "closed_list.h"
#include "search_engine.h"
#include "state.h"
#include "operator.h"
#include <tr1/tuple>

using namespace modules;

class Heuristic;

typedef std::tr1::tuple<const TimeStampedState *, const Operator *, double> OpenListEntry;

class OpenListEntryCompare
{
    public:
        bool operator()(const OpenListEntry left_entry, const OpenListEntry right_entry) const
        {
            return std::tr1::get<2>(right_entry) < std::tr1::get<2>(left_entry);
        }
};

typedef priority_queue<OpenListEntry, std::vector<OpenListEntry>,OpenListEntryCompare> OpenList;

struct OpenListInfo
{
    OpenListInfo(Heuristic *heur, bool only_pref);
    Heuristic *heuristic;
    bool only_preferred_operators;
    //    OpenList<OpenListEntry> open;
    OpenList open;
    int priority; // low value indicates high priority
};

typedef std::map<std::vector<double>, double> ThirdClosedList;
bool tssKnown2(ThirdClosedList& scl,
        const TimedSymbolicStates& timedSymbolicStates);

class BestFirstSearchEngine : public SearchEngine
{
    private:
        std::vector<Heuristic *> heuristics;
        std::vector<Heuristic *> preferred_operator_heuristics;
        std::vector<OpenListInfo> open_lists;
        ClosedList closed_list;
        ThirdClosedList tcl;

        std::vector<double> best_heuristic_values;
        std::vector<const TimeStampedState*> best_states;
        int generated_states;
        int statePutInOpenList;
        int statesOmmitedFromOpenList;
        int childsWithSameG;
        int childsWithDifferentG;
        int childsWithSameF;
        int childsWithDifferentF;
        int parentsWithTwoOrMoreChilds;
        int parentsWithTwoOrMoreChildsWithSameG;
        int parentsWithAtMostOneChild;
        int parentsWithAtMostOneChildWithSameG;

        TimeStampedState current_state;
        const TimeStampedState *current_predecessor;
        const Operator *current_operator;

        time_t start_time;
        int currentQueueIndex;

    private:
        bool is_dead_end();
        bool check_goal();
        bool check_progress(const TimeStampedState* state);
        void report_progress();
        void reward_progress();
        void generate_successors(const TimeStampedState *parent_ptr);
        void dump_transition() const;
        /// Dump the whole knowledge of search engine.
        void dump_everything() const;
        OpenListInfo *select_open_queue();

        void dump_plan_prefix_for_current_state() const;
        void dump_plan_prefix_for__state(const TimeStampedState &state) const;

        /// Compute G depending on the current g mode.
        double getG(const TimeStampedState* state_ptr, const TimeStampedState* closed_ptr, const Operator* op) const;
        double getGc(const TimeStampedState *parent_ptr) const;
        double getGc(const TimeStampedState *parent_ptr, const Operator *op) const;
        double getGm(const TimeStampedState *parent_ptr) const;
        double getGt(const TimeStampedState *parent_ptr) const;

    protected:
        virtual SearchEngine::status step();

    public:
        enum QueueManagementMode
        {
            ROUND_ROBIN, PRIORITY_BASED, HIERARCHICAL
        } mode;
        BestFirstSearchEngine(QueueManagementMode _mode);
        ~BestFirstSearchEngine();
        void add_heuristic(Heuristic *heuristic, bool use_estimates,
                bool use_preferred_operators);
        virtual void statistics(time_t & current_time) const;
        virtual void initialize();
        SearchEngine::status fetch_next_state();

    public:
        double bestMakespan;
        double bestSumOfGoals;
};

#endif
