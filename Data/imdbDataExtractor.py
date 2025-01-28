import pandas as pd

"""names_file_path = "/Users/neelpremmehta/Desktop/DatabasesCW/imdb/name.basics.tsv"
principals_file_path = "/Users/neelpremmehta/Desktop/DatabasesCW/principals.csv"

#names_df = pd.read_csv(names_file_path, sep='\t')
principlas_df = pd.read_csv(principals_file_path)
#our_names_df = pd.DataFrame(columns=names_df.columns)

nameIDs = set()
for i in range(len(principlas_df)):
    nameIDs.add(principlas_df.iloc[i].loc["nconst"])
nameIDs = sorted(nameIDs)

print("ready")

our_names_df = names_df[names_df["nconst"].isin(nameIDs)]
our_names_df.to_csv("names.csv")"""

"""principals_file_path = "/Users/neelpremmehta/Desktop/DatabasesCW/imdb/title.principals.tsv"
links_file_path = "/Users/neelpremmehta/Desktop/DatabasesCW/ml-latest-small/links.csv"

principals_df = pd.read_csv(principals_file_path, sep='\t')
links_df = pd.read_csv(links_file_path)

titles = []
for i in range(len(links_df)):
    imdbID = str(int(links_df.iloc[i].loc["imdbId"]))
    k = 7-len(imdbID)
    imdbID = "tt" + "0"*k + imdbID
    titles.append(imdbID)

our_df = principals_df[principals_df["tconst"].isin(titles)]
our_df.to_csv("principals.csv")"""

basics_file_path = "/Users/neelpremmehta/Desktop/DatabasesCW/imdb/title.basics.tsv"
links_file_path = "/Users/neelpremmehta/Desktop/DatabasesCW/ml-latest-small/links.csv"

basics_df = pd.read_csv(basics_file_path, sep='\t', dtype={
    "tconst": "str",  # Replace "col1" with the actual column names
    "titleType": "str",
    "primaryTitle": "str",
    "originalTitle": "str",   # Specify the problematic column as string
    "isAdult": "str"
})

links_df = pd.read_csv(links_file_path)

titles = []
for i in range(len(links_df)):
    imdbID = str(int(links_df.iloc[i].loc["imdbId"]))
    k = 7-len(imdbID)
    imdbID = "tt" + "0"*k + imdbID
    titles.append(imdbID)

our_df = basics_df[basics_df["tconst"].isin(titles)]
our_df.to_csv("basics.csv")