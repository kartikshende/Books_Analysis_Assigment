import pandas as pd
#import numpy as np

books = pd.read_csv(r"C:\Users\Kartik\Desktop\Myfiles\goodreadsbooks\books.csv", sep=',', error_bad_lines=False, index_col=0)

print(books.head())

popularbooks = books.sort_values('ratings_count', ascending=False)[:5]
print(popularbooks)