import pymongo
conn= pymongo.MongoClient("mongodb://localhost:27017/")
# print(conn.list_database_names())
db= conn['student']
coll= db['details']
dic=[{
    "id":2,
    "name": "abhay",
    "place":"kayamkulam",
    "gender":"male",
    "course":"mca",
    "mark":85,
    "grade":"A+"},
    {
    "id":3,
    "name": "abhinand",
    "place":"kayamkulam",
    "gender":"male",
    "course":"mca",
    "mark":90,
    "grade":"A+"},
    {
    "id":3,
    "name": "anu",
    "place":"kannur",
    "gender":"female",
    "course":"mca",
    "mark":70,
    "grade":"A+"}]

# coll.insert_many(dic)
# coll.delete_one({"name":"abhinand"})
# coll.delete_many({"mark":{"$lt":80}})
# coll.update_one({"name":"anu"},{"$set":{"id":4}})
# for i in coll.find({"place":"kannur"}):
#     print(i["name"])

# for i in coll.find():
#     if(i["name"].startswith("a")):
#         print(i["name"])


for i in coll.find({"mark":{"$gt":80,"$lt":90}}):
    print(i["name"])