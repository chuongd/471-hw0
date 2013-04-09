#include "StaticPredictor.h"

StaticPredictor::StaticPredictor() : Predictor(){
  
}

BranchOutcome StaticPredictor::predictBranch(ADDRINT addr){

  return NotTaken;

}

void StaticPredictor::updatePredictor(ADDRINT addr, BranchOutcome o){

}

void StaticPredictor::dumpStats(FILE * out){
  Predictor::dumpStats(out);

  /* other stats */
}

extern "C" Predictor *Create(){

  return new StaticPredictor();

}
