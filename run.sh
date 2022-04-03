#!/bin/bash

#python train_styleswin.py \
python -m torch.distributed.launch --nproc_per_node=8 train_styleswin.py \
	--batch 256 \
	--wandb \
	--size 32 \
	--checkpoint_path checkpoints/ \
	--sample_path ./ \
	--G_channel_multiplier 2 \
	--bcr \
	--r1 5 \
	--D_lr 0.0002 \
	--D_sn \
	--ttur \
	--lr_decay \
	--eval_freq 1000\
	--save_freq 1000\
	--lr_decay_start_steps 500000 
