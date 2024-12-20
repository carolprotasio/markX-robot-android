from robot.api.deco import keyword
from pymongo import MongoClient 

client = MongoClient('mongodb+srv://ctest:ctest@cluster0.eh8e2.mongodb.net/MarkX?retryWrites=true&w=majority&appName=Cluster0')

db = client['MarkX']

@keyword('Remove task from database')
def remove_task_by_name(task_name):
    collection = db['tasks']
    collection.delete_many({'text': task_name})
    print('Removendo a tarefa '+ task_name)
