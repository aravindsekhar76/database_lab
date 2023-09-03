# import pymongo
# conn= "mongodb://localhos:27017/"
# client =pymongo.MongoClient(conn)
# database= client['MCA']
# collection =database['college']

# for i in collection.find({"course":"MCA"}):
#     print(i)

import pymongo 
conn= pymongo.MongoClient("mongodb://localhost:27017/")

# print(conn.list_database_names())

db= conn['MCA']
coll=db['college']


for i in coll.find({"course":"MCA"}):
    print(i)

for i in coll.find({"course":"MCA"}):
    print(i["name"]["fname"])

for i in coll.find({"course":"MCA","gender":"female"}):
    print(i['name']['fname']+" "+i['name']['lname'])

for i in coll.find({"course":"MCA"}).sort('mark',-1).limit(1):
    print(i['name']['fname']+" "+ i['name']['lname'])

for i in coll.find({"gender":"male","grade":"A+"}):
    print(i['name']['fname']+" "+i['grade'])

for i in coll.find({"course":"Mechanical"}).sort('mark',-1).limit(3):
    print(i['name']['fname']+" "+i['name']['lname'])

for i in coll.find({"gender":"female" ,'mark':{'$gt' : 90}}):
    print(i['name']['fname']+" "+i['name']['lname']+" "+str(i['mark']))

for i in coll.find({'mark':{'$gt' : 80, '$lt':90}}):
    print(i['name']['fname']+" "+i['name']['lname']+" "+str(i['mark']))

for i in coll.find():
    if (i['name']['fname'].startswith('V')):
        print(i['name']['fname']+" "+i['name']['lname'])

for i in coll.find({"address.city":"Kollam"}):
    print(i['name']['fname']+" "+i['name']['lname'])

for i in coll.find({"address.city":{'$nin':['Kollam','Thiruvananthapuram']}}):
    print(i['name']['fname']+" "+i['name']['lname'])

for i in coll.find({"gender":"female", "address.city":{'$in': ["Thiruvananthapuram","Kollam"]}}):
    print(i['name']['fname']+" "+i['name']['lname'])








