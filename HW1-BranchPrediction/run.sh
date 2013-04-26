#/usr/bin/bash

# Available packages:
#   - blackscholes (apps)
#   - bodytrack (apps)
#   - facesim (apps)
#   - ferret (apps)
#   - freqmine (apps)
#   - raytrace (apps)
#   - swaptions (apps)
#   - fluidanimate (apps)
#   - vips (apps)
#   - x264 (apps)
#   - canneal (kernels)
#   - dedup (kernels)
#   - streamcluster (kernels)
#   - glib (libs)
#   - gsl (libs)
#   - hooks (libs)
#   - imagick (libs)
#   - libxml2 (libs)
#   - ssl (libs)
#   - tbblib (libs)
#   - mesa (libs)
#   - zlib (libs)
#   - cmake (tools)
#   - libtool (tools)
#   - yasm (tools)

echo "" > temp.out
echo "" > results.out

parsecmgmt -a run -p blackscholes -i test -n 1 -d . -s 'pin -t /cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so -predictor /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/TwoBitSaturatingPredictor.so -out /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/temp.out -- ' \
&& echo "blackscholes" >> results.out && cat temp.out >> results.out
echo "" >> results.out

parsecmgmt -a run -p bodytrack -i test -n 1 -d . -s 'pin -t /cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so -predictor /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/TwoBitSaturatingPredictor.so -out /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/temp.out -- ' \
&& echo "bodytrack" >> results.out && cat temp.out >> results.out
echo "" >> results.out

parsecmgmt -a run -p facesim -i test -n 1 -d . -s 'pin -t /cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so -predictor /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/TwoBitSaturatingPredictor.so -out /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/temp.out -- ' \
&& echo "facesim" >> results.out && cat temp.out >> results.out
echo "" >> results.out

parsecmgmt -a run -p ferret -i test -n 1 -d . -s 'pin -t /cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so -predictor /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/TwoBitSaturatingPredictor.so -out /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/temp.out -- ' \
&& echo "ferret" >> results.out && cat temp.out >> results.out
echo "" >> results.out

parsecmgmt -a run -p freqmine -i test -n 1 -d . -s 'pin -t /cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so -predictor /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/TwoBitSaturatingPredictor.so -out /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/temp.out -- ' \
&& echo "freqmine" >> results.out && cat temp.out >> results.out
echo "" >> results.out

parsecmgmt -a run -p swaptions -i test -n 1 -d . -s 'pin -t /cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so -predictor /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/TwoBitSaturatingPredictor.so -out /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/temp.out -- ' \
&& echo "swaptions" >> results.out && cat temp.out >> results.out
echo "" >> results.out

parsecmgmt -a run -p fluidanimate -i test -n 1 -d . -s 'pin -t /cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so -predictor /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/TwoBitSaturatingPredictor.so -out /homes/iws/boonekr/cse471/471-hw0/HW1-BranchPrediction/temp.out -- ' \
&& echo "fluidanimate" >> results.out && cat temp.out >> results.out
echo "" >> results.out

rm temp.out









