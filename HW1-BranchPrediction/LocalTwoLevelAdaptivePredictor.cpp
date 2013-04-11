#include "LocalTwoLevelAdaptivePredictor.h"

LocalTwoLevelAdaptivePredictor::LocalTwoLevelAdaptivePredictor() : Predictor(), localBHT(BHT_ELE_SIZE), globalPHT(GHT_ELE_SIZE){


}

BranchOutcome LocalTwoLevelAdaptivePredictor::predictBranch(ADDRINT addr){
 	
 	// index the local history table by the last 6 bits of the 
    uint64_t index_lht = addr & MASK_6;

    if (index_lht < BHT_ELE_SIZE){
    	// index the pht
    	uint64_t index_bht_row = localBHT[index_lht] & MASK_16;
    	// row
    	std::vector<int> row_vect = globalPHT[index_bht_row];
    	// col
    	int decision = row_vect[index_lht];
    	// predict result
    	printf("item found in table\n");
    	switch(decision){
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

    }else {
    	printf("branch address out of table\n"); // should not happen
    }
    return NotTaken;
}

void LocalTwoLevelAdaptivePredictor::updatePredictor(ADDRINT addr, BranchOutcome o){
	// result does not match
	uint64_t index_lht = addr & MASK_6;

    if (index_lht < BHT_ELE_SIZE){
    	// index the pht
    	uint64_t index_bht_row = localBHT[index_lht] & MASK_16;
    	// col
    	int decision = globalPHT[index_bht_row][index_lht];
    	// predict result
    	printf("item found in table\n");
    	
    	if (o == Taken){
			//printf("update Taken\n");
			if (decision != TAKEN)
				globalPHT[index_bht_row][index_lht] += 1;
			//update history table
			localBHT[index_lht] = (localBHT[index_lht] << 1) | 0x1;
		}else{ // NotTaken case
			if (decision != NOT_TAKEN)
				globalPHT[index_bht_row][index_lht] -= 1;
			//update history table .. shift left and put in 1
			localBHT[index_lht] = (localBHT[index_lht] << 1) & (~0x1);
		}

    }else {
    	printf("branch address out of table\n"); // should not happen
    }	

	



}

void LocalTwoLevelAdaptivePredictor::dumpStats(FILE * out){
  Predictor::dumpStats(out);

  /* other stats */
}

extern "C" Predictor *Create(){

  return new LocalTwoLevelAdaptivePredictor();

}
