GPU=$1
CUDA_VISIBLE_DEVICES=$GPU python main.py --checkpoint_dir=causalvid \
	--dataset=causalvid \
	--mc=5 \
	--bnum=10 \
	--epochs=20 \
	--lr=0.00001 \
	--qmax_words=0 \
	--amax_words=38 \
	--max_feats=32 \
	--batch_size=64 \
	--batch_size_val=64 \
	--num_thread_reader=8 \
	--mlm_prob=0 \
	--n_layers=1 \
	--embd_dim=512 \
	--ff_dim=1024 \
	--dropout=0.3 \
	--seed=666 \
	--cl_loss=0 \
	--lan="RoBERTa" \
	--save_dir='./exp/test/' \
	#--pretrain_path='./save_models/causalvid/CoVGT/best_model.pth'