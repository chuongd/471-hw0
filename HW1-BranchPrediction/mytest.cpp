#include <cstdlib>
#include "LocalTwoLevelAdaptivePredictor.h"


char buff[64+1];

int main (int arg, char **argv){
	uint64_t addr = 0x7f1db46a7215;
	LocalTwoLevelAdaptivePredictor predictor;
	// printout all BHT elements
	for (uint64_t a = addr; a < addr + 400; a+4){
		// printout all BHT elements
		printf("Predition: %d\n", predictor.predictBranch(addr) );
		predictor.updatePredictor(addr, Taken);
	}
	/* Process all arguments, outputting their binary. */
    //{
        //n = atoi (argv[i]);
       
            
   // }
}






// helper for printout

