---
title:  "Python Revision - Section II - Statements"
date:   2018-08-06 22:20:00
categories: [Python]
tags: [python, statements, programming]
---

If we iterate over a list of tuples, we can get each element of each tuple
through what we called unpacking:

```python
list = [(1,2), (3,4)]
for (t1, t2) in list:
    print (t1, t2)
```

The same behaviour is valid to iterate over a dictionary.

## Usefull Operators:

### range

Generator to quickly generate a list of integers. 

```python
print(list(range(0,100,10)))

#=> prints [0,10,20,30,...,90]
```


### enumerate

Enumerate is a built-in function which allows us to loop over 
some list and have an automatic counter.

```python
my_list = ["a", "b", "c"]
for i, element in enumerate(my_list, 1):
    print(i, element)

#=> prints:
# 1 a
# 2 b
# 3 c
```

### zip

A generator used to combine two lists

```python
list_1 = [1,2,3]
list_2 = ["a", "b", "c"]
list(zip(list_1, list_2))

#=> prints [(1,'a'), (2,'b'), (3, 'c')]
```

___

I hope it will be helpful to you and if there's any questions or something else, please, feel free to contact me. 

*Forte Abraço* 