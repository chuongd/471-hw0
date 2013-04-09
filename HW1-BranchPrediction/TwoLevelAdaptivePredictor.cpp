#include "TwoLevelAdaptivePredictor.h"

TwoLevelAdaptivePredictor::TwoLevelAdaptivePredictor() : Predictor(){

}

BranchOutcome TwoLevelAdaptivePredictor::predictBranch(ADDRINT addr){
 
    return Taken;
  
}

void TwoLevelAdaptivePredictor::updatePredictor(ADDRINT addr, BranchOutcome o){


}

void TwoLevelAdaptivePredictor::dumpStats(FILE * out){
  Predictor::dumpStats(out);

  /* other stats */
}

extern "C" Predictor *Create(){

  return new TwoLevelAdaptivePredictor();

}
