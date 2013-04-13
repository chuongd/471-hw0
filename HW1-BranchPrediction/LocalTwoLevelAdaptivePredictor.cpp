
#include "LocalTwoLevelAdaptivePredictor.h"
#include <iostream>
#include <fstream>

static char *binrep (uint64_t val, char *buff, int sz);


LocalTwoLevelAdaptivePredictor::LocalTwoLevelAdaptivePredictor() : Predictor(), localBHT(BHT_ELE_SIZE,0), globalPHT(GHT_ELE_SIZE,0){

    //printf("Predictor Created here \n");
}

BranchOutcome LocalTwoLevelAdaptivePredictor::predictBranch(ADDRINT addr){
    //printf("=======Start Predict Branch ========\n");
    //printf("size: %d   %d\n",GHT_ELE_SIZE, BHT_ELE_SIZE );
 	// index the local history table by the last 6 bits of the 
 int index_lht = addr & MASK_6;
    //printf("predict index column: %d\n", index_lht);
  if (index_lht < BHT_ELE_SIZE){
    	// index the pht
  int index_bht_row = localBHT[index_lht] & MASK_10 ;
        // row
      //  printf("predict index row: %d\n", index_bht_row);
    	// col
   int decision = NOT_TAKEN;
   if (index_bht_row < GHT_ELE_SIZE && index_lht < BHT_ELE_SIZE){
          //  printf("item [%d][%d] = %d\n", index_bht_row, index_lht, 0);
    decision = globalPHT[index_bht_row];
        //    printf("Get result from PHT %d\n", decision);
  }

    	// predict result
    //	printf("==========================item found in table==========================\n");
  switch(decision){
   case NOT_TAKEN:
   case WEAK_NOT_TAKEN:
    return NotTaken;
   case TAKEN:
   case WEAK_TAKEN:
     return Taken;
   default:
     return NotTaken;
 }

}else {
    	printf("branch address out of table\n"); // should not happen
    }
  return NotTaken;
}

  void LocalTwoLevelAdaptivePredictor::updatePredictor(ADDRINT addr, BranchOutcome o){
    //printf ("************Start UPdate predictor****************\n");
    // result does not match
   char buff[64+1];
   int64_t index_lht = addr & MASK_6;
   //if (index_lht >= BHT_ELE_SIZE)
      //printf("index: %d\n",index_lht);
    // get the pattern
   if (index_lht < BHT_ELE_SIZE){
     //int row = localBHT[index_lht] & MASK_16;
     int row = localBHT[index_lht] & MASK_10;
     //int col = index_lht;
      // update locally PHT
     //printf("row: %d\n",row);
    if (o == Taken ){     
        // if row is available
        if (row < GHT_ELE_SIZE){
            int predicted = globalPHT[row];
           globalPHT[row] = (predicted != TAKEN) ? ++predicted : predicted;
           //binrep(globalPHT[row][col],buff,65);
          //printf("updated globalPHT[%d][%d]=%s\n",row,col,binrep(globalPHT[row][col],buff,65));

        }
         
        // UPDATE LOCAL HISTORY all time    
        int val = localBHT[index_lht] & MASK_10;
        val <<= 1;
        val &= MASK_10;
        val |= 1; 
        val &= MASK_10;
        //binrep(val,buff,65);
        //printf("updated Taken localBHT[%d]=%s\n",index_lht, binrep(globalPHT[row][col],buff,65));
        //printf("value %d\n",val);
        localBHT[index_lht] = val;
        
        //printf("updated localHT[%d]=%d\n",index_lht,val);
    }else if (o == NotTaken){
        if(row < GHT_ELE_SIZE){
            int predicted = globalPHT[row];
            globalPHT[row] = (predicted != NOT_TAKEN) ? --predicted : predicted;
        }
        // UPDATE LOCAL HISTORY all the times
        int val = localBHT[index_lht] & MASK_10;
        val <<= 1;
        val &= MASK_10;
        //binrep(val,buff,65);
        //printf("updated Not Taken localBHT[%d]=%s\n",index_lht, binrep(globalPHT[row][col],buff,65));
        //printf("value %d\n",val);
        localBHT[index_lht] = val;


      }
      

      // update global with bitshift

      
    }
   //if (index_lht < BHT_ELE_SIZE)
     //printf("value: %d\n", localBHT[index_lht]);
  //  if (index_lht < BHT_ELE_SIZE && index_lht >= 0){
  //   	// index the pht
  //       //localBHT[0] <<= 1;
  //       //localBHT[0] |= 1;
  //  int index_bht_row = localBHT[index_lht] & MASK_16;
  //        //localBHT[index_lht] <<= 1;
  //        //localBHT[index_lht] |= 1;
  // //       //int val3 = 1;
  // //       ///val3 |= 1;
  //    	///localBHT[index_lht] |= val3;
  // //       //localBHT[index_lht] |= 1;
  //   int decision = globalPHT[index_bht_row][index_lht];
  //   //printf("decision: %d\n", decision);
  //   if (o == Taken){
		// // 	//printf("update Taken\n");
  //     if (decision != TAKEN && (index_bht_row < GHT_ELE_SIZE)) {
  //     //   printf("row: %d\n", index_lht);
  //      }
		//  		//globalPHT[index_bht_row][index_lht] += 1;         

  //     localBHT[index_lht] <<= 1;
  //     localBHT[index_lht] |= 1;    

  //   }else{ // NotTaken case
		//  	//if (decision != NOT_TAKEN)
		//  		// globalPHT[index_bht_row][index_lht] -= 1;

  //      //localBHT[index_lht] <<= 1;
  //   }

  //     }else {
  //   	printf("branch address out of table\n"); // should not happen
  //   }	
  }

  void LocalTwoLevelAdaptivePredictor::dumpStats(FILE * out){
    Predictor::dumpStats(out);

  /* other stats */
  }

  extern "C" Predictor *Create(){

    return new LocalTwoLevelAdaptivePredictor();

  }

char *binrep (uint64_t val, char *buff, int sz) {
    char *pbuff = buff;

    /* Must be able to store one character at least. */
    if (sz < 1) return NULL;

    /* Special case for zero to ensure some output. */
    if (val == 0) {
        *pbuff++ = '0';
        *pbuff = '\0';
        return buff;
    }

    /* Work from the end of the buffer back. */
    pbuff += sz;
    *pbuff-- = '\0';

    /* For each bit (going backwards) store character. */
    while (val != 0) {
        if (sz-- == 0) return NULL;
        *pbuff-- = ((val & 1) == 1) ? '1' : '0';

        /* Get next bit. */
        val >>= 1;
    }
    return pbuff+1;
}