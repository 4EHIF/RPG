import MySQLdb

db = MySQLdb.connect(host="localhost",    
                     user="",         
                     passwd="",  
                     db="") 
cur = db.cursor()
cur.execute("SELECT * FROM YOUR_TABLE_NAME")

db.close()