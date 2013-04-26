#include "Predictor.h"
#include <vector>

#define SIZE 18


#define NOT_TAKEN 0
#define WEAK_NOT_TAKEN 1
#define WEAK_TAKEN 2
#define TAKEN 3

class TwoBitSaturatingPredictor : public Predictor{
private:
  uint64_t mask;

public:
  //PredictionState state;
  std::vector<int> branchPredictionBuffer;
  TwoBitSaturatingPredictor();  
  virtual BranchOutcome predictBranch(ADDRINT);
  virtual void updatePredictor(ADDRINT, BranchOutcome);
  virtual void dumpStats(FILE *);
};
