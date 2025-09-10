---
title:  "Python Revision - Section IV - Lambda, Map and Filter"
date:   2018-08-07 17:20:00
categories: [Python]
tags: [python, statements, programming]
---

---

### Map Function

The map function allows us to map a function to an iterable object.

```python
    def square(num):
        return num**2

    my_nums = [1,2,3,4]

    map(square, my_nums)
```

To obtain the mapped values, we need to iterate over the map or cast it to a list.

```python
    list(map(square, my_nums))
    # [0,1,4,9,16]
```

### Filter Function

Almost the same as the map function, but in this case, the return will only
consider True results. 

```python
    def check_even(num):
        return num % 2 == 0

    nums = [1,2,3,4]
    filter(check_even, nums)
    list(filter(check_even, nums))

    # [0,2,4]
```

### Lambda Expressions

Sometimes we face a case that we need to use a certain function just once. And maybe this function is so simple that we can write it in just one line. That's why lambda expressions exist. Sometimes writing a def function isn't necessary so we use lambda expressions to attend to our needs. For example, we can write a function in order to get the square of a number:

```python
def square(x):
    return x**2
```

But, if we have a list of numbers which we want to obtain its squares, instead of iterate over the list and call the square function, we can do this way:

```python
my_nums = [0,1,2,3]
list(map(lambda num: num ** 2, my_nums))
```

The result will be the same! 

We can also pass multiple arguments into a lambda expression:

```python
lambda x,y: x+y
```

**Attention!! Not every function can be translated into a lambda 
expression!!!**

___

I hope it will be helpful to you and if there's any questions or something else, please, feel free to contact me. 

*Forte Abraço* 