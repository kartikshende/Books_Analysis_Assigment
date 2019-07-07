"""Books analysis to find out popular books, popular books per language, longest to read book """
import pandas as pd

from Config import Book_DB

import sqlalchemy

class Books:

    booksfile = r"C:\Users\Kartik\Desktop\Myfiles\goodreadsbooks\books.csv"

    try:
        books = pd.read_csv(booksfile,sep=',', error_bad_lines=False,
                                index_col=0)
       # print(books.head())
    except Exception as ex:
        print("File not found please check filename or path")


    def BooksAnalysis(b,booksvalue,count):

        books = b.sort_values(booksvalue, ascending=False)[:count]
        #print(books)

        return books

    """--------------Popular Books-----------"""

    popularbooks = BooksAnalysis(books,'ratings_count',5) #'ratings_count'

    popularbooks.to_sql(name='popular_books1',con=Book_DB.DBconnection(), if_exists='replace', index=True)
    print(popularbooks)

    """--------------Longest to read Books-----------"""

    longestbook = BooksAnalysis(books,'# num_pages',5)

    longestbook.to_sql(name='longest_books1',con=Book_DB.DBconnection(), if_exists='replace', index=True)

    print(longestbook)

    """--------------Popular per language Books-----------"""

    lang = books.language_code
    #print(lang)

    # To find out each languages availbale
    languages = []

    #[languages.append(i) for i in lang if i not in languages]

    for i in lang:
        if i not in languages:
            languages.append(i)

    print(languages)

    for row in languages:
        print("Top Five books of Language", row)

        popularperlanguages = books[(books.language_code == row)]

        """ Calling fuction here to sort popular per language"""
        popularlanguages = BooksAnalysis(popularperlanguages,'ratings_count',5)

        print(popularlanguages)

        popularlanguages.to_sql(name='popularperlanguages', con=Book_DB.DBconnection(), if_exists='append', index=True)

        print('Done')

#print(Book_DB.DBconnection())