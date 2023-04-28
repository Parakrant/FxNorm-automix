python ../automix/data_normalization.py --input-folder ${INPUT_FOLDER} \
                    --output-suffix ${SUFFIX} \
                    --features-save ${PATH_FEATURES}/features_MUSDB18_TEST.npy \
                    --normalize True

/home/u571/work/automix/input



python data_normalization.py --input-folder "/home/u571/work/automix/input" --output-suffix "normalized" --features-save "/home/u571/work/automix/features/features_MUSDB18_TEST.npy" --normalize True

python data_normalization.py --input-folder input/ --output-suffix output/ --features-save features/features_MUSDB18_TEST.npy --normalize True