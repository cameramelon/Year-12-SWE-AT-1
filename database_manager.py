import sqlite3 as sql

con = sql.connect("database/data_source.db")
cur = con.cursor()
data = cur.execute("SELECT * FROM cards").fetchall()
con.close()
f = open("public/json/cardData.json", "w")

f.write("[\n")
for row in data:
    f.write("{\n")
    f.write(
        f'"extID":{row[0]},\n"name":"{row[1]}",\n"hyperlink":"{row[2]}",\n"about":"{row[3]}",\n"image":"{row[4]}",\n"language":"{row[5]}",\n"alt":"{row[6]}",\n"buttontext":"{row[7]}"\n'
    )
    if row == data[len(data) - 1]:
        f.write("}\n")
    else:
        f.write("},\n")
f.write("]\n")

con = sql.connect("database/data_source.db")
cur = con.cursor()
data = cur.execute("SELECT * FROM upgrades").fetchall()
con.close()
f = open("public/json/upgradeData.json", "w")

f.write("[\n")
for row in data:
    f.write("{\n")
    f.write(
        f'"upgID":{row[0]},\n"monkeyname":"{row[1]}",\n"u1xx":"{row[2]}",\n"u2xx":"{row[3]}",\n"u3xx":"{row[4]}",\n"u4xx":"{row[5]}",\n"u5xx":"{row[6]}",\n"x1x":"{row[7]}",\n"x2x":"{row[8]}",\n"x3x":"{row[9]}",\n"x4x":"{row[10]}",\n"x5x":"{row[11]}",\n"xx1":"{row[12]}",\n"xx2":"{row[13]}",\n"xx3":"{row[14]}",\n"xx4":"{row[15]}",\n"xx5":"{row[16]}"\n'
    )
    if row == data[len(data) - 1]:
        f.write("}\n")
    else:
        f.write("},\n")
f.write("]\n")

f.close()
