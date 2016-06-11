 library(RMySQL)
 conn=dbConnect(MySQL(),dbname='skdb',username='root',password='liuyong',host='127.0.0.1',port=3306)
dbListTables(conn)