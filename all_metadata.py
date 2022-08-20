import requests
import json

lst=[]     #empty list
def md_fun():
    res = requests.get('http://169.254.169.254/latest/meta-data/')
    li = res.text
    li=list(li.split("\n"))                                                            # converting the output into a list format
    for i in li:                                                                       # for loop for the elements from the list
        md = requests.get(f'http://169.254.169.254/latest/meta-data/{i}')
        lst.append(i)                                                                  #appending key value
        lst.append(md.text)                                                            #appending value value
#        print(i, md.text)
#    print(lst)
    meta_dict = {lst[i]: lst[i + 1] for i in range(0, len(lst), 2)}                    #converting list to dictonary
#    print(meta_dict)
    meta_json = json.dumps(meta_dict, indent=4, sort_keys=True)                        #converting dictonary to json format
    print(meta_json)

md_fun()
