#!/usr/bin/sh

parsecmgmt -a run -p blackscholes -i simsmall -n 1 -d . -s 'pin -t /cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so -predictor /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/TwoLevelAdaptivePredictor.so -out /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/twolevelresult.out -- '
# parsecmgmt -a run -p ferret -i test -n 1 -d . -s 'pin -t /cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so -predictor /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/TwoLevelAdaptivePredictor.so -out /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/twolevelresult.out -- '

cat twolevelresult.out
