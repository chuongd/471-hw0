#include "TwoLevelAdaptivePredictor.h"
#include <cassert>

TwoLevelAdaptivePredictor::TwoLevelAdaptivePredictor()
    : Predictor(), patternHistoryTable(1 << HISTORY_LENGTH) {
  mask = (1 << HISTORY_LENGTH) - 1;
}

BranchOutcome TwoLevelAdaptivePredictor::predictBranch(ADDRINT addr) {

  uint16_t index = addr & mask;
  assert(index < patternHistoryTable.size());
  int state = patternHistoryTable[index];
  switch (state) {
    case TAKEN:
    case WEAK_TAKEN:
      return Taken;
    case NOT_TAKEN:
    case WEAK_NOT_TAKEN:
      return NotTaken;
    default:
      // shouldn't get to this state
      assert(false);
      return Taken;
  }

}

void TwoLevelAdaptivePredictor::updatePredictor(ADDRINT addr, BranchOutcome o){

  // update globalBranchHistory
  globalBranchHistory << 1;
  if (o == Taken)
    globalBranchHistory | 0x01;

  // update state
  uint16_t index = globalBranchHistory & mask;
  assert(index < patternHistoryTable.size());
  int state = patternHistoryTable[index];
  if (o == Taken && state != TAKEN)
    patternHistoryTable[index]++;
  else if (o == NotTaken && state != NOT_TAKEN)
    patternHistoryTable[index]--;

}

void TwoLevelAdaptivePredictor::dumpStats(FILE * out){
  Predictor::dumpStats(out);

  /* other stats */
}

extern "C" Predictor *Create(){

  return new TwoLevelAdaptivePredictor();

}
