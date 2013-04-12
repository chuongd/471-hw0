#include "Predictor.h"
#include <vector>

// 2 bit saturating counter for each entry
// 4kB budget = 32768 bits
// 16384 entries
// each address will have 2^4 entries for history
// that's 1024 address entries
// that leaves 10 bits for addressing
#define HISTORY_LENGTH 2
#define ADDRESS_LENGTH 12

#define NOT_TAKEN 0
#define WEAK_NOT_TAKEN 1
#define WEAK_TAKEN 2
#define TAKEN 3

class TwoLevelAdaptivePredictor: public Predictor{
private:
  uint32_t globalBranchHistory;
  uint32_t addressMask;
  uint32_t historyMask;
  std::vector<int> patternHistoryTable;

public:
  TwoLevelAdaptivePredictor();  
  virtual BranchOutcome predictBranch(ADDRINT);
  virtual void updatePredictor(ADDRINT, BranchOutcome);
  virtual void dumpStats(FILE * out);
};
