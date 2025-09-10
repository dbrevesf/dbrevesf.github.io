---
title:  "Python Revision - Section I - Data Types"
date:   2018-08-05 22:02:00
categories: [Python]
tags: [python, data types, programming]
---



### Numbers

In Python we just have: integers and floating-point numbers.

### Strings

- Immutability: Once a string is created, the elements within it can not be changed or replaced.

- Methods:
    ```python
    s.upper()
    s.lower()
    s.split()
    ```

- Print Formatting:

    ```python
    print("bla bla {}".format("ble ble"))
    #=> prints 'bla bla ble ble' to STDOUT.
    ```

    We can also write print formatting like this:

    ```python
    text = "ble ble"
    print(f"bla bla {text}")
    #=> prints 'bla bla ble ble' to STDOUT.
    ```



### Lists

- Methods:

    ```python
    l.append()
    l.pop()
    ```

### Dictionaries

- Methods:

    ```python
    d.keys()
    d.values()
    d.items()
    ```


### Tuples

- Immutability: Use tuples to present things that shouldn't be changed, such as days of the week. 

- Methods:

    ```python
    t.index("value")
    t.count("value")
    ```

    - Tuples doesn't have an append method.

### Sets
    
- Unique elements: we can get a list of unique element calling the set function. 

    ```python
    set(list)
    ```

___

I hope it will be helpful to you and if there's any questions or something else, please, feel free to contact me. 

*Forte Abraço* 
