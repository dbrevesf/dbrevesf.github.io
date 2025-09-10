---
title: "Python Revision - Section VIII - Decorators"
date:  2018-08-14 19:08:11
categories: [Python]
tags: [pyhton, decorators, programming]
---

### Decorators

In a generic way, decorator is a design pattern that allows some behaviour to be added to an individual object, dynamically, without affecting the behaviour of other objects from the same class. 

In Python, everything is an object. Including functions. That being said, we can create functions within another function, we can return functions and we even can pass functions as an argument to another function. 

So, decorators can be thought of as functions which modify the functionality of another function. 

```python
def new_decorator(func):
    '''
    This function receives a function as a parameter, add some commands in it and returns a new function. 
    '''
    def wrap_func():
       '''
       This function wraps some commands to the original function
       ''' 
        print("Code would be here, before executing the func")
        func()
        print("Code here will execute after the func()")

    return wrap_func

def func_needs_decorator():
    '''
    This function needs do be changed
    '''
    print("This function is in need of a decorator")


# We can change the func_needs_decorator() like this
func_needs_decorator = new_decorator(func_needs_decorator)

# Or, using the @ symbol like this:
@new_decorator
def func_needs_decorator():
    print("this function is in need of a decorator")

```

Decorators are largely used in web frameworks like Flask or Django! 

___

I hope it will be helpful to you and if there's any questions or something else, please, feel free to contact me. 

*Forte Abraço* 
