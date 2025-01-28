import pandas as pd

#principals_file_path = "/Users/neelpremmehta/Desktop/DatabasesCW/imdb/title.principals.tsv"
links_file_path = "/Users/neelpremmehta/Desktop/DatabasesCW/ml-latest-small/links.csv"

#principles_df = pd.read_csv(principals_file_path, sep='\t')
links_df = pd.read_csv(links_file_path)

print("starting")

#our_principles_df = pd.DataFrame(columns=principles_df.columns)

highCount = 0
lowCount = 0
highest = -1
lowest = 10000000
total = 0

for i in range(len(links_df)):
    curr = links_df.iloc[i].loc["imdbId"] 
    if curr > highest:
        if curr < 1000000:
            highest = curr
        else:
            highCount += 1
    elif curr < lowest:
        if curr > 500000:
            lowest = curr
        else:
            lowCount += 1
    total += 1

print("highest: " + str(highest))
print("num: " + str(highCount))
print("lowest: " + str(lowest))
print("num: " + str(lowCount))
print("total: " + str(total))