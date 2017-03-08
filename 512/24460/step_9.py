n = int(input())

namespaces = dict()
vars = dict()
    
def add(namespace, var):
    if namespace not in namespaces:
        namespaces[namespace] = []
        vars[namespace] = []

    if var not in vars[namespace]:
        vars[namespace].append(var)

def create(namespace, parent):
    if parent not in namespaces:
        namespaces[parent] = []
        vars[parent] = []

    if namespace not in namespaces:
        namespaces[namespace] = [parent]
        vars[namespace] = []
    elif parent not in namespaces[namespace]:
        namespaces[namespace] = [parent]

def get(namespace, var):
    result = 'None'
    if var in vars[namespace]:
       result = namespace
    else:
        for parent in namespaces[namespace]:
            result = get(parent, var)
            if result != 'None':
                break
    return result;

for _ in range(n):
    ( command, arg1, arg2 ) = input().split()

    if command == 'add':
        add(arg1, arg2)
    elif command == 'create':
        create(arg1, arg2)
    elif command == 'get':
        namespace = get(arg1, arg2)
        print(namespace)
