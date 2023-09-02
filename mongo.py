import pymongo 
conn= "mongodb://localhost:27017/"
client = pymongo.MongoClient(conn
database = client['MCA']
collection = database['college1']

for i in collection.find({"course":"MCA"}):
    print(i)

for i in collection.find({"gender": "female","course": "MCA"}):
    print(i['name']['fname']+ " " +i['name']['lname'])
    print(i['gender'])

for i in collection.find({"course":"MCA"}).sort('mark',-1).limit(1):
    print(i['name']['fname']+ " " +i['name']['lname'])

for i in collection.find({"name.fname":"Karthik"}):
    print(i)
for i in collection.find({"gender":"male","grade":"A+"},{"mark":0}):
    print(i)

collection.insert_one({"name":{"fname":"Shiji","lname":"Kozhikode"},"gender":"male"})

for i in collection.find({"course":"Mechanical"}).sort('mark',-1).limit(3):
    print(i['name']['fname']+ " " +i['name']['lname']+"    "+str(i['mark']))

for i in collection.find({"gender":"female" ,'mark':{'$gt' : 90}}):
    print(i)

for i in collection.find({"mark":{'$gt':80 ,'$lt':90}}):
    print(i)

for i in collection.find():
    if(i['name']['fname'].startswith('V')):
        print(i['name']['fname']+ " " +i['name']['lname'])

for i in collection.find({"address.city":"Kollam"}):
    print(i)

for i in collection.find({"address.city":{'$nin': ["Thiruvananthapuram","Kollam"]}}):
      print(i['address'])

for i in collection.find({"gender":"female", "address.city":{'$in': ["Thiruvananthapuram","Kollam"]}}):
    print(i['address'])
print(i['address'])
