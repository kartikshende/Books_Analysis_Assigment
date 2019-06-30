"""Find out Top 5 popular books"""
import pandas as pd
import sqlalchemy
import pymysql

connection = sqlalchemy.create_engine('mysql+pymysql://root@localhost/my_book')


books = pd.read_csv(r"C:\Users\Kartik\Desktop\Myfiles\goodreadsbooks\books.csv", sep=',', error_bad_lines=False, index_col=0)

print(books.head())

popularbooks = books.sort_values('ratings_count', ascending=False)[:5]
print(popularbooks)

popularbooks.to_sql(name='popular_books',con=connection, if_exists='replace', index=True)

print("Done")