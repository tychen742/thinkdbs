import sqlite3

print() 
print("##### printing data from database:") 

# ############## SELECT DATA and PRINT ###########################################
db = sqlite3.connect('database.db')
table = db.execute('SELECT * FROM person')
for each in table:
    print(each)
    # print(each['firstname'])
    # print(each[0])


# ################# PRINT AS DiCTIONARY ###################
db = sqlite3.connect('database.db')
db.row_factory = sqlite3.Row
table = db.execute('SELECT * FROM person')
# for each in table:
#     print(dict(each))        ### print as dictionary

print()

#  ################# DELETE ###################
db.execute('DELETE FROM person WHERE lastname = "Clintoon"')
db.commit()

print("##### Clintoon' is now Deleted.")

# If you don't do this, you get object, not data.
db = sqlite3.connect('database.db')
table = db.execute("SELECT * FROM person")
for each in table:
    print(each)
