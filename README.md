# kpmg_challanges

KPMG interview chalanges

Problem Statement: We have a nested object, we would like a function that you pass in the object and a key and get
back the value. How this is implemented is up to you.
Example Inputs
object = {“a”:{“b”:{“c”:”d”}}}
key = a/b/c
object = {“x”:{“y”:{“z”:”a”}}}
key = x/y/z
value = a
Hints:
We would like to see some tests. A quick read to help you along the way
We would expect it in any other language apart from elixir.


Solution:

We have used python3 to slove this problem.

Here we are using a while loop till we have a dict, once this loops encounters a non dict element it will print the key.
