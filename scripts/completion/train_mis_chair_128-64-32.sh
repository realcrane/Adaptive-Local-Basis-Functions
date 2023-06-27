cfg_path="configs/completion/chair_128-64-32.py"
devices=2
batch_size=8
lr=0.0005
exp_name="mis_chair_128-64-32-bs=$(($batch_size * $devices))-lr=$lr"
vis_ckpt_path="./logs/train_logs/vis_chair_128-64-32-bs=16-lr=0.0005/version_3/checkpoints/last.ckpt"

# LOG="./logs/echo_logs/${exp_name}.txt"
# exec &> >(tee "$LOG")

CUDA_VISIBLE_DEVICES=0,1 \
python -u ./train_mis.py \
    ${cfg_path} \
    --vis_ckpt_path=${vis_ckpt_path} \
    --exp_name=${exp_name} \
    --devices=${devices} \
    --batch_size=${batch_size} \
    --lr $lr \
    --check_val_every_n_epoch=1 \
    --log_every_n_steps=1000