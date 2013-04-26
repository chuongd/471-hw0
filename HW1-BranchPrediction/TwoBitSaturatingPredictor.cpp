#include "TwoBitSaturatingPredictor.h"
#include <inttypes.h>
TwoBitSaturatingPredictor::TwoBitSaturatingPredictor() : Predictor(), branchPredictionBuffer(1 << SIZE) {
	mask = (1 << SIZE) - 1;
}

BranchOutcome TwoBitSaturatingPredictor::predictBranch(ADDRINT addr){

	uint64_t index = addr & mask;

	if (index < (1 << SIZE)){
		int state = branchPredictionBuffer[index];
		switch(state){
			case NOT_TAKEN:
			case WEAK_NOT_TAKEN:
				return NotTaken;
			case TAKEN:
			case WEAK_TAKEN:
				return Taken;
			default:
			printf("Hit Default case\n");
			return NotTaken;
		}


	}

	printf("Index out of bounds\n");
	return NotTaken;

}

void TwoBitSaturatingPredictor::updatePredictor(ADDRINT addr, BranchOutcome o){

	uint64_t index = addr & mask;
	if (index < (1 << SIZE)){
		int state = branchPredictionBuffer[index];
		if (o == Taken){
			if (state != TAKEN)
				branchPredictionBuffer[index] += 1;
		}else{ // NotTaken case
			if (state != NOT_TAKEN)
				branchPredictionBuffer[index] -= 1;
		}
	}else{
		printf("index out of bounds\n");
	}




	//printf("======================SIZE OF ADDR INT =================================\n");
	// printf("SIZE OF ADDRINT %d\n", sizeof(addr));
	// printf("Value of addr: %u \n", addr);

}

void TwoBitSaturatingPredictor::dumpStats(FILE * out) {
	Predictor::dumpStats(out);

  /* other stats */
}

extern "C" Predictor *Create(){

	return new TwoBitSaturatingPredictor();

}
