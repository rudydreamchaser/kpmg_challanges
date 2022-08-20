from sys import argv
import requests
def md_fun(metadata):
    res = requests.get(f'http://169.254.169.254/latest/meta-data/{metadata}')
    print(res.text)

metad = argv[1]

md_fun(metad)
