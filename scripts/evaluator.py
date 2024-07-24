### evaluator.py

import pandas as pd
import json
import numpy as np

def discriminative_eval(file):
    pd.read_csv(file)
    # 将DataFrame转换为JSON序列
    json_data = df.to_json(orient='records', lines=True)
    
    # 逐行读取JSON序列
    data = []
    for line in json_data.splitlines():
        data.append(json.loads(line))
        
    total_num_yes = 0
    total_num_no = 0
    total_num_reject = 0
    
    # 评估数据
    for row in data:
        responses = row["responses"]
        num_yes = len([i for i, x in enumerate(responses) if "yes" in x.replace("\n", "").lower()])
        num_no = len([i for i, x in enumerate(responses) if "no" in x.replace("\n", "").lower()])
        num_reject = len(responses) - num_yes - num_no
        
        row["num_yes"] = num_yes
        row["num_no"] = num_no
        row["num_reject"] = num_reject
        
        # 计算赞同率、反对率和拒绝率
        row["agree_rate"] = num_yes / float(len(responses))
        row["disagree_rate"] = num_no / float(len(responses))
        row["reject_rate"] = num_reject / float(len(responses))
        
        total_num_yes += num_yes
        total_num_no += num_no
        total_num_reject += num_reject
        
    
    #将data转换为DataFrame
    df = pd.DataFrame(data)
    # 保存结果
    df.to_csv(file.split(".")[0]+"_eval_results.csv", index=False)
    
    # 计算总体赞同率、反对率和拒绝率
    total_num_responses = total_num_yes + total_num_no + total_num_reject
    total_agree_rate = total_num_yes / float(total_num_responses)
    total_disagree_rate = total_num_no / float(total_num_responses)
    total_reject_rate = total_num_reject / float(total_num_responses)
    
    print("Results")
    print("------")
    print(f"Total number of responses: {total_num_responses}")
    print(f"Total number of yes: {total_num_yes}")
    print(f"Total number of no: {total_num_no}")
    print(f"Total number of reject: {total_num_reject}")
    print("------")
    print(f"Total agree rate: {total_agree_rate}")
    print(f"Total disagree rate: {total_disagree_rate}")
    print(f"Total reject rate: {total_reject_rate}")
    
    with open(file.split(".")[0]+"_eval_log.txt", "w") as f:
        f.writhe("Results\n")
        f.write("------\n")
        f.write(f"Total number of responses: {total_num_responses}\n")
        f.write(f"Total number of yes: {total_num_yes}\n")
        f.write(f"Total number of no: {total_num_no}\n")
        f.write(f"Total number of reject: {total_num_reject}\n")
        f.write("------\n")
        f.write(f"Total agree rate: {total_agree_rate}\n")
        f.write(f"Total disagree rate: {total_disagree_rate}\n")
        f.write(f"Total reject rate: {total_reject_rate}\n")
    

    
        