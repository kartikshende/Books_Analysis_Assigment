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