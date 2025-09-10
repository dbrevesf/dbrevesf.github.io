---
title: "Python Revision - Section IX - Another Built-in Functions"
date:  2018-08-14 19:36:20
categories: [Python]
tags: [python, built-in functions, programming]
---

### Built-in Functions

We've already seen some important built-in functions like ```map```, ```filter``` and ```lambda```. Now, we'll see other ones. 


### Reduce

The function ```reduce(function, sequence)``` continually applies the function to the sequence and then returns a sigle value. 

```python
from functools import reduce

lst = [47,11,42,13]
reduce(lambda x,y:x+y, lst)

#prints 113
```

Lets look at a diagram to get a better understanding of what's going on here:

![reduce function](https://python-course.eu/images/reduce_diagram.png "Reduce exectution")

As the image shows to us, the ```reduce()``` is reducing the sequence, applying the function passed as a parameter until a single final value. 

We can use ```reduce()``` in a large amount of cases, like: finding the max value of a sequence:

```python
max_find = lambda a,b: a if (a>b) else b
reduce(max_find, lst)

```


### Zip

```zip()``` makes an iterator that aggregates elements from each of the iterables. It combines two iterators in a sequence of tuples until the shortest iterable is exhausted. 

```python
x = [1,2,3]
y = [4,5,6]

print(list(zip(x,y)))

#prints [(1,4), (2,5), (3,6)]

```


### Enumerate

It allows us to keep a count as we iterate through an object. It's like labeling a list with an ordered labels.

```python
lst = ['a', 'b', 'c']
for number, item in enumerate(lst):
    print(number)
    print(item)

# prints
# 0
# a
# 1
# b
# 2
# c
```

It's particularly useful when you have a case where you need to have some sort of tracker:

```python
for count, item in enumerate(lst):
    if count >= 2:
        break
    else:
        print(item)

# prints
# a
# b
```

We can put a ```start``` argument to override the default value of zero:

```python
enumerate(lst, start=1)
```


### ```all()``` and ```any()```

Are built-in functions that allow us to check for boolean matching in an iterable.

```all(lst)``` willl return ```True``` if all elements of ```lst``` are ```True```. 

```any(lst)``` willl return ```True``` if any elements of ```lst``` is ```True```. 


___

I hope it will be helpful to you and if there's any questions or something else, please, feel free to contact me. 

*Forte Abraço* 








