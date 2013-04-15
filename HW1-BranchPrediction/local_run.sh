parsecmgmt -a run -i test  -p blackscholes -n 1 -d . -s \
			"pin -t \
			/cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so \
			-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
			-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_blackscholes.out -- "

parsecmgmt -a run -i test  -p bodytrack -n 1 -d . -s "pin -t \
			/cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so \
			-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so 
			-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_bodytrack.out -- "

parsecmgmt -a run -i test  -p facesim -n 1 -d . -s "pin -t \
			/cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so\
			-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
			-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_facesim.out -- "

prsecmgmt -a run -i test  -p ferret -n 1 -d . -s "pin -t \
			/cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so \
			-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
			-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_ferret.out -- "

parsecmgmt -a run -i test  -p freqmine  -n 1 -d . -s "pin -t \
			/cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so \
			-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
			-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_freqmine.out -- "

#parsecmgmt -a run -i test  -p raytrace -n 1 -d . -s "pin -t /cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so -predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so -out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_raytrace.out -- "

parsecmgmt -a run -i test  -p swaptions -n 1 -d . -s "pin -t \
			/cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so \
			-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
			-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_swaptions.out -- "

parsecmgmt -a run -i test  -p fluidanimate -n 1 -d . -s "pin -t \
			/cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so \
			-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
			-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_fluidanimate.out -- "



parsecmgmt -a run -i test  -p vips -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_vips.out -- "

parsecmgmt -a run -i test  -p x264 -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_x264.out -- "

parsecmgmt -a run -i test  -p canneal -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_canneal.out -- "

parsecmgmt -a run -i test  -p dedup -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_dedup.out -- "

parsecmgmt -a run -i test  -p dedup -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_dedup.out -- "

parsecmgmt -a run -i test  -p streamcluster -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_streamcluster.out -- "

parsecmgmt -a run -i test  -p glib -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_glib.out -- "

parsecmgmt -a run -i test  -p gsl -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_gsl.out -- "

parsecmgmt -a run -i test  -p hooks -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_hooks -- "

parsecmgmt -a run -i test  -p imagick -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_imagick.out -- "


parsecmgmt -a run -i test  -p libxml2 -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_libxml2.out -- "

parsecmgmt -a run -i test  -p ssl -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_ssl.out -- "

parsecmgmt -a run -i test  -p tbblib -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_tbblib.out -- "

parsecmgmt -a run -i test  -p mesa -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_mesa.out -- "

parsecmgmt -a run -i test  -p zlib -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_zlib.out -- "	

parsecmgmt -a run -i test  -p libtool -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_libtool.out -- "	

parsecmgmt -a run -i test  -p cmake  -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_cmake .out -- "	

parsecmgmt -a run -i test  -p yasm -n 1 -d . -s "pin -t \
				/cse/courses/cse471/13sp/PIN/PIN/source/tools \
				/CSE471-BP/obj-intel64/bp.so \
				-predictor /homes/iws/chuongd/471/HW1-BranchPrediction/LocalTwoLevelAdaptivePredictor.so \
				-out /homes/iws/chuongd/471/HW1-BranchPrediction/local_run/twobit_yasm.out -- "	
