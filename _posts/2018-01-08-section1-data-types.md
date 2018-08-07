---
title:  "Python Revision - Section I - Data Types"
date:   2018-08-06 22:02:00
categories: [python]
tags: [python, data types, programming]
---



### Numbers

In Python we just have: integers and floating-point numbers.

### Strings

- Immutability: Once a string is created, the elements within it can not be 
changed or replaced.

- Methods:
    ``` python
    s.upper()
    s.lower()
    s.split()
    ```

- Print Formatting:

    ``` python
    print("bla bla {}".format("ble ble"))
    #=> prints 'bla bla ble ble' to STDOUT.
    ```


### Lists

- Methods:

    ``` python
    l.append()
    l.pop()
    ```

### Dictionaries

- Methods:

    ``` python
    d.keys()
    d.values()
    d.items()
    ```


### Tuples

- Immutability: Use tubles to present things that shouldn't be changed, such as 
days of week. 

- Methods:

    ``` python
    t.index("value")
    t.count("value")
    ```

    - Tuples doesn't have a append method.

### Sets
    
- Unique elements. We can get a list of unique element calling the set 
function. 

    ``` python
    set(list)
    ```

