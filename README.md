# Beyond Surface Text : Lexical -> Semantic Network for Causal Video Question Answering


## Environment
Assume you have installed Anaconda3, cuda version > 11.0 with gpu memory >= 24G, please do the following to setup the envs:
```
>conda create -n videoqa python==3.8.16
>conda activate videoqa
>git clone https://github.com/doc-doc/CoVGT.git
>pip install -r requirements.txt
>conda install pytorch==1.8.1 torchvision==0.9.1 cudatoolkit=11.1 -c pytorch -c nvidia
```
## Preparation
Please create a data folder outside this repo, so you have two folders in your workspace 'workspace/data/' and 'workspace/CoVGT/'. 

Below we use NExT-QA as an example to get you farmiliar with the code. 
Please download the related video feature and QA annotations according to the links provided in the ```Results and Resources``` section. Note that the QA annotations will be saved into ```workspace/CoVGT/datasets/nextqa/``` after you clone this repo., video features into ```workspace/data/nextqa/``` and checkpoint files into ```workspace/data/save_models/nextqa/```. Change default paths in global_parameters.py and args.py for your own datasets.

## Inference
```
./shell/next_test.sh 0
```
## Evaluation
```
python eval_next.py --folder CoVGT_FTCoWV --mode test
```
## Train
We have provided all the scripts in the folder 'shells', you can start your training by specifying the GPU IDs behind the script. (If you have multiple GPUs, you can separate them with comma: ./shell/nextqa_train.sh 0,1)
```
./shell/nextqa_train.sh 0
```

