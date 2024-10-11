# BUMBLE Benchmark

A bilingual(English&Chinese) benchmark for implicit bias evaluation in Large Language Models using psychometric attack methods

## Run evaluations

1. Install the required packages by running `pip install -r requirements.txt`.
2. `cd scripts/<MODEL>` to cd into some directory.
3. Fill in the `config.py` file in the directory, including API key and url.
4. Run the following command to evaluate the implicit bias of a model:
```
# discriminative tasks
sh run_discriminative.sh

# generative tasks
sh run_generative.sh
```
