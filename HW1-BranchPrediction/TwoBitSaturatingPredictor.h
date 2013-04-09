#include "Predictor.h"
#include <vector>

#define SIZE 2048


#define NOT_TAKEN 0
#define WEAK_NOT_TAKEN 1
#define WEAK_TAKEN 2
#define TAKEN 3

const uint64_t MASK = 0x7ff;

class TwoBitSaturatingPredictor : public Predictor{
public:
  //PredictionState state;
  std::vector<int> branchPredictionBuffer;
  TwoBitSaturatingPredictor();  
  virtual BranchOutcome predictBranch(ADDRINT);
  virtual void updatePredictor(ADDRINT, BranchOutcome);
  virtual void dumpStats(FILE *);
};
