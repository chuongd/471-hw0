#include "Predictor.h"

#define BHR_SIZE 16
#define BHT_SIZE 1024
class LocalTwoLevelAdaptivePredictor: public Predictor{

public:
  LocalTwoLevelAdaptivePredictor();  
  virtual BranchOutcome predictBranch(ADDRINT);
  virtual void updatePredictor(ADDRINT, BranchOutcome);
  virtual void dumpStats(FILE *);
};
