# Implicit Bias Benchmark(Temporarily Named)

An bilingual(English&Chinese) benchmark for implicit bias evaluation in Large Language Models using the psychometric attack methods in paper "[Evaluating Implicit Bias in Large Language Models by Attacking From a Psychometric Perspective](https://arxiv.org/abs/2406.14023)"

## News

- 2024-07-24: The code and data for GPT series models are released. More models will be released soon.

## How to Run

### 1. Install requirements

```
pip install -r requirements.txt
```

### 2. Change the API url and key

Change the API url and key in `./scripts/config.py`.

### 3. Run evaluation

Run evaluation on targeted model, tasks, language.

```
cd ./scripts

python main.py  --model gpt-3.5-turbo-1106 
                --task all 
                --language en 
                --processes 3 
                --num_samples 5
```

### 4. Check results

Results will be saved in `./results` folder, named as `{model}_{task}_{language}_{num_samples}_eval_results.csv` and recorded in `{model}_{task}_{language}_{num_samples}_eval_log.txt`.

## Add New Models

### 1. Register the new model

Add the new model name in `./supported_models.py`.

### 2. Offer the request template

Add the corresponding model request template in `./scripts/templates`, then import the model in `./scripts/__init__.py` in the format of `from . import {new_model}_template`.

### 3. Change the API url and key

Change the API url and key in `./scripts/config.py`.

### 4. Run evaluation

Run evaluation on targeted model, tasks, language.

```
cd ./scripts

python main.py  --model {MODEL_NAME} 
                --task all 
                --language en
                --processes 3 
                --num_samples 5
```

### 5. Check results

Results will be saved in `./results` folder, named as `{model}_{task}_{language}_{num_samples}_eval_results.csv` and recorded in `{model}_{task}_{language}_{num_samples}_eval_log.txt`.

## Citation
If you find our work helpful or want to use this benchmark, please star this repository and cite the following paper:
```
@article{wen2024evaluating,
  title={Evaluating Implicit Bias in Large Language Models by Attacking From a Psychometric Perspective},
  author={Wen, Yuchen and Bi, Keping and Chen, Wei and Guo, Jiafeng and Cheng, Xueqi},
  journal={arXiv preprint arXiv:2406.14023},
  year={2024}
}
```