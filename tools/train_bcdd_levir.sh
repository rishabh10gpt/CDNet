export CUDA_VISIBLE_DEVICES="0,1,2,3,4,5,6,7"

python3 ./tools/train.py --file_root BCDD-LEVIR --lr 5e-5 --max_steps 40000
