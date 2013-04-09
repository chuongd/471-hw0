#include "Predictor.h"
class StaticPredictor : public Predictor{

public:
  StaticPredictor();  
  virtual BranchOutcome predictBranch(ADDRINT);
  virtual void updatePredictor(ADDRINT, BranchOutcome);
  virtual void dumpStats(FILE *);
};
