cfg_path="configs/completion/chair_64-32-32.py"

ckpt_path="./logs/train_logs/vis_chair_64-32-32-bs=16-lr=0.0005/version_0/checkpoints/last.ckpt"
pred_list="./data/vis/chair.lst"
output_root_dir="./experiments/complete_chair_64-32-32"

CUDA_VISIBLE_DEVICES=3 \
python -u ./src/tools/pred_vis.py \
    ${cfg_path} \
    --ckpt_path=${ckpt_path} \
    --pred_list=${pred_list} \
    --output_root_dir=${output_root_dir} \
    --step_size 0.002