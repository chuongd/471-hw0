#include "Predictor.h"

class TwoLevelAdaptivePredictor: public Predictor{

public:
  TwoLevelAdaptivePredictor();  
  virtual BranchOutcome predictBranch(ADDRINT);
  virtual void updatePredictor(ADDRINT, BranchOutcome);
  virtual void dumpStats(FILE * out);
};
