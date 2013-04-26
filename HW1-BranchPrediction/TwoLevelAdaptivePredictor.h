#include "Predictor.h"
#include <vector>

#define HISTORY_LENGTH 14
#define ADDRESS_LENGTH 0

#define NOT_TAKEN 0
#define WEAK_NOT_TAKEN 1
#define WEAK_TAKEN 2
#define TAKEN 3

class TwoLevelAdaptivePredictor: public Predictor{
private:
  uint64_t globalBranchHistory;
  uint64_t addressMask;
  uint64_t historyMask;
  std::vector<int> patternHistoryTable;

public:
  TwoLevelAdaptivePredictor();  
  virtual BranchOutcome predictBranch(ADDRINT);
  virtual void updatePredictor(ADDRINT, BranchOutcome);
  virtual void dumpStats(FILE * out);
};
