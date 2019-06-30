"""Find out Top 5 longest books to read"""
import pandas as pd
import sqlalchemy
import pymysql

connection = sqlalchemy.create_engine('mysql+pymysql://root@localhost/my_book')

books = pd.read_csv(r"C:\Users\Kartik\Desktop\Myfiles\goodreadsbooks\books.csv", sep=',', error_bad_lines=False, index_col=0)

print(books.head())

longestbooks = books.sort_values('# num_pages', ascending=False)[:5]
print(longestbooks)

longestbooks.to_sql(name='longestbooks',con=connection, if_exists='replace',index=True)

print("Done")