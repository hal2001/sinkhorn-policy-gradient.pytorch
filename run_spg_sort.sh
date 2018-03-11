#!/bin/bash
MODEL='ddpg'
COP='sort_0-9'
ARCH='fc'
RANDOM_SEED=$1
RUN_NUM=$2
RUN_NAME="SPG-$COP-$RANDOM_SEED$RUN_NUM"
TRAIN_SIZE=500000
VAL_SIZE=10000
USE_BATCHNORM='False'
BATCH_SIZE=128
N_NODES=10
N_FEATURES=1
N_HID1=300
ACTOR_LR=7e-5 # 3e-5
CRITIC_LR=7e-4 # 7e-4
ACTOR_LR_DECAY_RATE=0.96
CRITIC_LR_DECAY_RATE=0.96
ACTOR_LR_DECAY_STEP=5000
CRITIC_LR_DECAY_STEP=5000
N_EPOCHS=10
EPSILON=0.9
EPSILON_DECAY_RATE=0.95
EPSILON_DECAY_STEP=500000
POISSON_LAMBDA=5
POISSON_DECAY_RATE=0.95
POISSON_DECAY_STEP=500000
BUFFER_SIZE=1000000
SINKHORN_TAU=1
SINKHORN_ITERS=5
SIGOPT='False'
ID=1235
EPISODE_LEN=1
SAVE_STATS='False'
DISABLE_TENSORBOARD='True'
EMBEDDING_DIM=128
LSTM_HIDDEN=128
N_LAYERS=1
EPOCH_START=0
#ACTOR_LOAD_PATH='results/models/5a7328085379c0568a8f253f/actor-epoch-667.pt'
#CRITIC_LOAD_PATH='results/models/5a7328085379c0568a8f253f/critic-epoch-667.pt'

python -W ignore train_$MODEL.py --task $COP --arch $ARCH --train_size $TRAIN_SIZE --val_size $VAL_SIZE --batch_size $BATCH_SIZE --n_nodes $N_NODES --n_features $N_FEATURES --n_hid1 $N_HID1 --random_seed $RANDOM_SEED --run_name $RUN_NAME --disable_tensorboard $DISABLE_TENSORBOARD --actor_lr $ACTOR_LR --critic_lr $CRITIC_LR --n_epochs $N_EPOCHS --poisson_decay_rate $POISSON_DECAY_RATE --poisson_decay_step $POISSON_DECAY_STEP --buffer_size $BUFFER_SIZE --epsilon $EPSILON --epsilon_decay_rate $EPSILON_DECAY_RATE --epsilon_decay_step $EPSILON_DECAY_STEP --sigopt $SIGOPT --_id $ID --sinkhorn_iters $SINKHORN_ITERS --sinkhorn_tau $SINKHORN_TAU --episode_len $EPISODE_LEN --save_stats $SAVE_STATS --embedding_dim $EMBEDDING_DIM --lstm_dim $LSTM_HIDDEN --n_layers $N_LAYERS --actor_lr_decay_rate $ACTOR_LR_DECAY_RATE --actor_lr_decay_step $ACTOR_LR_DECAY_STEP --critic_lr_decay_rate $CRITIC_LR_DECAY_RATE --critic_lr_decay_step $CRITIC_LR_DECAY_STEP --epoch_start $EPOCH_START --poisson_lambda $POISSON_LAMBDA
