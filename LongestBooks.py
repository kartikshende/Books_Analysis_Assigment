import pandas as pd
#import numpy as np

books = pd.read_csv(r"C:\Users\Kartik\Desktop\Myfiles\goodreadsbooks\books.csv", sep=',', error_bad_lines=False, index_col=0)

print(books.head())

longestbooks = books.sort_values('# num_pages', ascending=False)[:5]
print(longestbooks)

import pymysql

conn = pymysql.connect(host="localhost", user="root", passwd="", db="my_book")

myCursor = conn.cursor()

myCursor.execute(""" CREATE TABLE test
 (
 id int primary key,
 test varchar(20)
 )
""")

conn.commit()

conn.close()