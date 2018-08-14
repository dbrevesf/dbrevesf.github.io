---
title: "Python Revision - Section X - Generators and Iterators"
date:  2018-08-14 20:11:42
categories: [Python]
tags: [python, generators, iterators, programming]
---

### Iterators

Iterator is a general concept: an object whose class has a ```next()``` method is an iterator.
Every generator is an iterator, but not vice versa. 


### Generators

Briefly, generators allow us to generate as we go along instead of holding everything in memory. Generator functions allow us to write a function that can send back a value and then later resume to pick up where it left off. That means that when a generator is called, they don't actually return a value. Instead, it generates a single value and after provideing it, it will automatically suspend and resume their execution and state around the last point of value generation. Let's see an example:

```python
# Generator function for the cube of numbers of a list
def gencubes(lst):
    for num in lst:
        yield num**3

for x in gencubes([1,2,3]):
    print(x)

#prints
# 1
# 8
# 27
```

Although it seems to be similar than a regular return function, the fact that the ```gencubes()``` doesn't return but yields the results, it means that the cubes of the numbers were calculated at runtime. That behaviour is convenient when we are talking about larger inputs and we need to save memory.


### ```next()``` and ```iter()``` functions

The ```next()``` function allows us to access the next element in a sequence. Considering the ```gencubes()``` generator, we can get the results like this:

```python
g = gencubes([1,2,3])
print(next(g))
# print 1
print(next(g))
# print 8
print(next(g))
# print 27

```

If we execute another ```next()```, a ```StopIteration``` exception will be raised. 

The ```iter()``` function allows us to convert iterables objects like lists or strings in an **iterator** so we can use ```next()``` to access its elements. 


### Generator comprehension

We've already seen list comprehension which is finding all items that we're interested and packing them into a list:

```python
my_list = [1,2,3,4,5,6]
filtered_list = [item for item in my_list if item > 3]
print(filtered_list)
# prints [4,5,6]
```

But now, we'll see the generator comprehension that's almost the same as the list comprehension but instead packing the elemnts into a list, we'll pack'em into a generator:

```python
my_list = [1,2,3,4,5,6]
generator_list = (item for item in my_list if item > 3)
print(next(generator_list))
# prints 4
print(next(generator_list))
# prints 5
print(next(generator_list))
# prints 6
```

___

I hope it will be helpful to you and if there's any questions or something else, please, feel free to contact me. 

*Forte Abraço* 