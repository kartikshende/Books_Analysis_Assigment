"""Find out Top 5 popular books per languages"""
import pandas as pd
import sqlalchemy
import pymysql

connection = sqlalchemy.create_engine('mysql+pymysql://root@localhost/my_book')

books = pd.read_csv(r"..\books.csv", sep=',', error_bad_lines=False, index_col=0)

print(books.head())

lang = books.language_code
print(lang)

#To find out each languages availbale
languages = []

[languages.append(i) for i in lang if i not in languages]

print(languages)

#To find out Top 5 popular books per languges

#popularlanguages = books[(books.language_code == 'eng')].sort_values('ratings_count', ascending=False)[:5]
#print(popularlanguages)

for row in languages:

    print("Top Five books of Language",row)
    popularlanguages = books[(books.language_code == row)].sort_values('ratings_count', ascending=False)[:5]

    print(popularlanguages)

    popularlanguages.to_sql(name='popularlanguages', con=connection, if_exists='append', index=True)

    print('Done')

