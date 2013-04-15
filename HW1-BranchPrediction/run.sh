echo blackscholes
parsecmgmt -a run -i test  -p blackscholes -n 1 -d . -s \
			"pin -t \
			/cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so \
			-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
			-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_blackscholes.out -- "
echo =====================================================
echo bodytrack
parsecmgmt -a run -i test  -p bodytrack -n 1 -d . -s "pin -t \
			/cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so \
			-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so 
			-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_bodytrack.out -- "
echo =====================================================
echo facesim
parsecmgmt -a run -i test  -p facesim -n 1 -d . -s "pin -t \
			/cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so\
			-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
			-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_facesim.out -- "
echo =====================================================
echo ferret
prsecmgmt -a run -i test  -p ferret -n 1 -d . -s "pin -t \
			/cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so \
			-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
			-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_ferret.out -- "
echo =====================================================
echo freqmine
parsecmgmt -a run -i test  -p freqmine  -n 1 -d . -s "pin -t \
			/cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so \
			-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
			-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_freqmine.out -- "

#parsecmgmt -a run -i test  -p raytrace -n 1 -d . -s "pin -t /cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so -predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so -out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_raytrace.out -- "
echo =====================================================
echo swaptions
parsecmgmt -a run -i test  -p swaptions -n 1 -d . -s "pin -t \
			/cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so \
			-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
			-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_swaptions.out -- "
echo =====================================================
echo fluidanimate
parsecmgmt -a run -i test  -p fluidanimate -n 1 -d . -s "pin -t \
			/cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so \
			-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
			-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_fluidanimate.out -- "


echo =====================================================
echo vips
parsecmgmt -a run -i test  -p vips -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_vips.out -- "

echo =====================================================
echo x264
parsecmgmt -a run -i test  -p x264 -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_x264.out -- "

echo =====================================================
echo canneal
parsecmgmt -a run -i test  -p canneal -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_canneal.out -- "

parsecmgmt -a run -i test  -p dedup -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_dedup.out -- "

parsecmgmt -a run -i test  -p dedup -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_dedup.out -- "

parsecmgmt -a run -i test  -p streamcluster -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_streamcluster.out -- "

parsecmgmt -a run -i test  -p glib -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_glib.out -- "

parsecmgmt -a run -i test  -p gsl -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_gsl.out -- "

parsecmgmt -a run -i test  -p hooks -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_hooks -- "

parsecmgmt -a run -i test  -p imagick -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_imagick.out -- "


parsecmgmt -a run -i test  -p libxml2 -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_libxml2.out -- "

parsecmgmt -a run -i test  -p ssl -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_ssl.out -- "

parsecmgmt -a run -i test  -p tbblib -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_tbblib.out -- "

parsecmgmt -a run -i test  -p mesa -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_mesa.out -- "

parsecmgmt -a run -i test  -p zlib -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_zlib.out -- "	

parsecmgmt -a run -i test  -p libtool -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_libtool.out -- "	

parsecmgmt -a run -i test  -p cmake  -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_cmake .out -- "	

parsecmgmt -a run -i test  -p yasm -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/TwoBitSaturatingPredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/two_bit/twobit_yasm.out -- "	
