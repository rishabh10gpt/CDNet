#PBS -l select=1:ncpus=128:ngpus=8
#PBS -q gpu_unlimit
cd $PBS_O_WORKDIR
uniq  $PBS_NODEFILE > mpd.hosts

export CUDA_VISIBLE_DEVICES="0,1,2,3,4,5,6,7"

python3 ./tools/train.py --file_root BCDD-LEVIR --lr 5e-5 --max_steps 40000
