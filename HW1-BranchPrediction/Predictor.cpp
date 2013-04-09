#include "Predictor.h"
#include <string.h>
#include <stdio.h>
#include <stdlib.h>


void Predictor::dumpStats(FILE * openFile){

  fprintf(openFile, "Branch Predictor: %s\n",this->identity);
  fprintf(openFile,"%lu out of %lu branches were taken (%f%%). Correctly predicted %lu (%f%%).\n",this->numTaken, 
                this->numBranches, 
                (float)this->numTaken/(float)this->numBranches, 
                this->correctPredictions, 
                (float)this->correctPredictions/(float)this->numBranches);

}
