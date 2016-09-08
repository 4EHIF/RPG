import MySQLdb

db = MySQLdb.connect(host="localhost",    
                     user="john",         
                     passwd="megajonhy",  
                     db="jonhydb") 
cur = db.cursor()
cur.execute("SELECT * FROM YOUR_TABLE_NAME")

db.close()