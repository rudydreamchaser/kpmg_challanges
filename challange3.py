def dict_fun(dic):
    key = []
    while (type(dic) is dict):
        v = list(dic.keys())
        key.append(v[0])
        dic=dic[v[0]]

    print("Key = ", key)
    print("Value = ", [dic])

dict_fun({'w':{'x':{'y':'z'}}})
dict_fun({'w':{'x':'y'}})
dict_fun({'w':'y'})
dict_fun({'a'})
