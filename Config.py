import sqlalchemy

class Book_DB:

    def DBconnection():

        try:
            connection = sqlalchemy.create_engine('mysql+pymysql://root@localhost/my_book')
            print("Hii")

        except Exception as ex:
            print("Data base not found")

        return connection

    r = DBconnection()
    print(r)

print(Book_DB.DBconnection())