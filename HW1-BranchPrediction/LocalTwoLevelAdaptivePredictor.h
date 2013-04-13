#include "Predictor.h"
#include <bitset>
#include <vector>
#include <inttypes.h>

#define BHR_SIZE 16
#define BHT_SIZE 1024 
#define BHT_ELE_SIZE 64 //(1024/16) // table elements
#define GHT_ELE_SIZE 1500 //(3*1024/2) // two bits staturating
// constfor 2 bits saturating
#define NOT_TAKEN 0
#define WEAK_NOT_TAKEN 1
#define WEAK_TAKEN 2
#define TAKEN 3

const uint64_t MASK_16 = 0xffff; 
const uint64_t MASK_8 = 0xff;
const uint64_t MASK_10 = 0x3ff;
const uint64_t MASK_6 = 0x3f; 

class LocalTwoLevelAdaptivePredictor: public Predictor{

public:
  LocalTwoLevelAdaptivePredictor();
  std::vector<int>localBHT;
  std::vector<int>globalPHT;
  virtual BranchOutcome predictBranch(ADDRINT);
  virtual void updatePredictor(ADDRINT, BranchOutcome);
  virtual void dumpStats(FILE *);
};
