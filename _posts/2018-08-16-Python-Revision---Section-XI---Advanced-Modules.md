---
title: "Python Revision - Section XI - Advanced Modules"
date:  2018-08-16 13:47:21
categories: [Python]
tags: [python, advanced modules, programming]
---

### Counter

Counter is a dict subclass which helps count hashable objects. Inside of its elements are stored as dictionary keys and the counts of the objects are stored as the value.

```python
from collections import Counter
lst = [1,2,2,3,1,4,4,5,5]
Counter(lst)
#Counter({1: 2, 2: 2, 4: 2, 5: 2, 3: 1})
```

The Counter wors with any kind of lists and also with strings. There are some methods that makes Counter more useful:

```python

sum(c.values())         # total of all counts
c.clear()               # reset all counts
list(c)                 # list unique elements
set(c)                  # convert to a set
dict(c)                 # convert to a regular dictionary
c.items()               # convert to a list of (elem, cnt) pairs
c.most_common()         # get the most common elements
c += Counter()          # remove zero and negative counts

```

### defaultdict

It's a dictionary-like object which takes a first argument as a default data type and will never raise a KeyError.

```python
from collections import defaultdict

d = defaultdict(object) # object can be an int, or a string, any object

```

We can even initialize the dictionary with default values:

```python
d = defaultdict(lambda: 0)
```

### OrderedDict

It's a dictionary subclass that remembers the order in which its contents are added. 


### Python Debugger 

```python
import pdb

x = [1,2,4]
pdb.set_trace()
a = x[4]
```

The execution will stop where the command ```pdb.set_trace()``` is written and we can use 'q' to quit. For further details, [click here!](https://docs.python.org/3/library/pdb.html "Here")

___

I hope it will be helpful to you and if there's any questions or something else, please, feel free to contact me. 

*Forte Abraço* 

