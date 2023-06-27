cfg_path="configs/reconstruction/chair_128.py"

ckpt_path="./logs/train_logs/rec_chair_128-bs=16-lr=0.0005/version_2/checkpoints/last.ckpt"
pred_list="./data/vis/chair_rec.lst"
output_root_dir="./experiments/rec_chair-128"

CUDA_VISIBLE_DEVICES=2 \
python -u ./src/tools/pred_rec.py \
    ${cfg_path} \
    --ckpt_path=${ckpt_path} \
    --pred_list=${pred_list} \
    --output_root_dir=${output_root_dir}