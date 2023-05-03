#bash
#!/usr/bin/bash

# Script to train automix nets

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
echo "$parent_path"
cd "$parent_path"


export RESULTS_FOLDER="../trainings" # "/path/to/folder/trainings"


export CONFIGS_FOLDER= $parent_path # "/path/to/folder/configs"

export CUDA_VISIBLE_DEVICES=0
export OMP_NUM_THREADS=1

# set folder suffix 
export FOLDER_SUFFIX="ours_S_Lb" # Example of training naming 

# describe experiment (optional)
export DESCRIPTION="ours_S_Lb"

MODELS_FOLDER="../trainings/results"
NET='ours_S_pretrained' # pretrain weights

# train network 
python ../automix/train.py ${CONFIGS_FOLDER}/${FOLDER_SUFFIX}.py \
                --folder-suffix $FOLDER_SUFFIX                 \
                --results-folder $RESULTS_FOLDER               \
                --weight-initialization ${MODELS_FOLDER}/${NET}/current_model_for_mixture.params \
                --description $DESCRIPTION &> ${RESULTS_FOLDER}/logs/${FOLDER_SUFFIX}.log < /dev/null &


# python scripts/train.py scripts/ours_S_Lb.py \
#                 --folder-suffix "ours_S_Lb"                 \
#                 --results-folder "/home/u571/work/automix/trainings"               \
#                 --weight-initialization "/home/u571/work/automix/trainings/results/ours_S_pretrained/current_model_for_mixture.params" \
#                 --description ps.log < /dev/null &