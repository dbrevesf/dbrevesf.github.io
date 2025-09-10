---
title:  "Python Revision - Section III - *args and **kwargs"
date:   2018-08-07 16:20:00
categories: [Python]
tags: [python, args, kwargs, programming]
---

### *args

When a function parameter starts with an asterisk, it allows for an arbitrary
number of arguments, and the function takes them in as a tuple of values. 

```python
def myfunc(*args):
    return sum(args)*.05

# We can call myfunc with as many parameters as we want
myfunc(40,60,20)
```

Also, we don't need to use the word ```args``` for it. We can choose any word
we want. 

```python
def myfunc(*integers):
    return sum(integers)*.05
```

### **kargs

In other hands, Python offers a way to handle arbitrary numbers of keyworded arguments. Instead of creating a tuple of values, **kwargs builds a dictionary of key/value pairs.


```python
def myfunc(**kwargs):
    if 'fruit' in kwargs:
        print(f"My favorite fruit is {kwargs['fruit']}")
    else:
        print("I don't like fruit")

myfunc(fruit='pineapple')
```

We can combine ```*args``` and ```**kwargs``` in the same function, but we necessarily have to put ```*args``` before ```**kwargs```.

___

I hope it will be helpful to you and if there's any questions or something else, please, feel free to contact me. 

*Forte Abraço* 