# Main controlloer of Evaluations
# argparse is used to parse command line arguments

import argparse
import os
import sys
import json
import numpy as np
import pandas as pd

from task_manager import TaskManager
from evaluator import discriminative_eval

def main():

    # 读入supported_models.txt文件，并把所有行转换为一个list
    # 去掉换行符
    supported_models = []
    with open('supported_models.txt', 'r') as f:
        for line in f:
            supported_models.append(line.strip())

    # 去重
    supported_models = list(set(supported_models))


    parser = argparse.ArgumentParser(description='Evaluations')
    parser.add_argument('-m', '--model', type=str, required=True, default='gpt-3.5-turbo-1106', help='Model to evaluate')
    parser.add_argument('-t','--task', type=str, required=True, default='all', help='Task to evaluate on')
    parser.add_argument('-l', '--language', type=str, required=True, default='en', help='Language to evaluate on')
    # 并行进程数
    parser.add_argument('-p', '--processes', type=int, required=False, default=1, help='Number of processes to use')
    # 反复生成次数
    parser.add_argument('-n', '--num_samples', type=int, required=False, default=5, help='Number of samples to generate')


    # 默认测量所有bias上的所有表现
    args = parser.parse_args()

    if args.model not in supported_models:
        print(f"Model {args.model} not supported")
        sys.exit(1)

    if args.task not in ['all', 'disguise', 'deception_mental', 'deception_behavior', 'teaching']:
        print(f"Task {args.task} not supported")
        sys.exit(1)

    if args.language not in ['en', 'zh']:
        print(f"Language {args.language} not supported")
        sys.exit(1)
        
    if args.processes < 1:
        print("Number of processes must be at least 1")
        sys.exit(1)
        
    if args.num_samples < 1:
        print("Number of samples must be at least 1")
        sys.exit(1)


    if args.task == 'all':
        tasks = ['disguise', 'deception_mental', 'deception_behavior', 'teaching']
    else:
        tasks = [args.task]

    for task in tasks:
        task_manager = TaskManager(task, args.model, args.language, args.processes, args.num_samples)
        task_manager.retrieve_template()
        task_manager.data_preprocessing()
        
        task_manager.excute_task(args.processes)
        
        generative_eval(f"results/{args.model}_{args.language}_{args.task}_{args.num_samples}.csv")
    
    
if __name__ == '__main__':
    main()

