#include "bp.h"
#include "pin.H"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
class Predictor{

public:
  unsigned long numBranches;
  unsigned long numTaken;
  unsigned long correctPredictions;
  char * identity;

  virtual BranchOutcome predictBranch(ADDRINT addr) = 0;
  virtual void updatePredictor(ADDRINT addr, BranchOutcome o) = 0;
  virtual void dumpStats(FILE *) = 0;

};
