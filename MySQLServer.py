import mysql.connector

try:
	# Connect to MySQL server
	mydb = mysql.connector.connect(host="localhost", user="root", password="ivansboard", database="alx_book_store")

	cursor = mydb.cursor()

	# create the database if it doesn't exist
	cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
	print("Database 'alx_book_store' created successfully!")

	# close cursor and mydb
	cursor.close() 
	mydb.close()

except mysql.connector.Error as err:
	print(f"Error occurred while creating database", err)


