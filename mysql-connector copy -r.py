import mysql.connector

connection = mysql.connector.connect(
    host = 'localhost',
    user = 'ohgiraffers',
    password = 'ohgiraffers',
    database = 'menudb'
)

cursor = connection.cursor()

cursor. execute('SElECT menu_code, menu_name, menu_price FROM tbl_menu')
result = cursor.fetchall()

# print(result)
for row in result: # row = 한 행의 결과
    print('menucode:',row[0],'/','menucode:',row[1],'/','menuprice:',row[2])

cursor.close()
connection.close()