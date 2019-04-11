gsutil rm -r $OUTDIR

t2t-trainer \
 --model=transformer \
 --hparams_set=transformer_tpu \
 --problem=translate_ende_wmt32k_packed \
 --train_steps=1000 \
 --eval_steps=3 \
 --data_dir=$DATADIR \
 --output_dir=$OUTDIR \
 --use_tpu=True \
 --cloud_tpu_name=$TPUNAME
