import pandas as pd
import random

# 读取文件，遇到无法解码的字符跳过
data = pd.read_csv("../data/test.csv", encoding="gb18030")

# 先向data中添加一个statements字段
data["statements"] = None

# 逐行遍历data，为每一行数据增加一个statements字段
for index, row in data.iterrows():
    # 从同一bias类别中抽取三个statement组成
    category_data = data[data["category"] == row["category"]]["statement"].tolist()
    statements = random.sample(category_data, min(len(category_data), 3))
    
    # 将抽取到的三个statement组成字符串
    statements_str = "\n".join(statements)
    
    # 将statements_str添加到row中
    data.loc[index, "statements"] = statements_str

# 将data保存到data/en_conversations_with_statements.csv文件
data.to_csv("../data/test_with_statements.csv", index=False)