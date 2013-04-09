#include "LocalTwoLevelAdaptivePredictor.h"

LocalTwoLevelAdaptivePredictor::LocalTwoLevelAdaptivePredictor() : Predictor(){


}

BranchOutcome LocalTwoLevelAdaptivePredictor::predictBranch(ADDRINT addr){
 
    return Taken;
  
}

void LocalTwoLevelAdaptivePredictor::updatePredictor(ADDRINT addr, BranchOutcome o){


}

void LocalTwoLevelAdaptivePredictor::dumpStats(FILE * out){
  Predictor::dumpStats(out);

  /* other stats */
}

extern "C" Predictor *Create(){

  return new LocalTwoLevelAdaptivePredictor();

}
