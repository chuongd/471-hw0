#include "Predictor.h"
#include <vector>

// 4KB budget - 32768 bits
// 32768 / 2 bits per buffer = 16384 entries max
// log 16384 = 14
// however, history will use some of the budget, so will use 1 less
// this leaves a total of 8192 entries
#define HISTORY_LENGTH 13

#define NOT_TAKEN 0
#define WEAK_NOT_TAKEN 1
#define WEAK_TAKEN 2
#define TAKEN 3

class TwoLevelAdaptivePredictor: public Predictor{
private:
  uint16_t globalBranchHistory;
  uint16_t mask;
  std::vector<int> patternHistoryTable;

public:
  TwoLevelAdaptivePredictor();  
  virtual BranchOutcome predictBranch(ADDRINT);
  virtual void updatePredictor(ADDRINT, BranchOutcome);
  virtual void dumpStats(FILE * out);
};
