---
title: "Python Revision - Section VI - Modules and Packages"
date:  2018-08-13 20:00:28
categories: []
tags: []
---

### Modules

In order to create a new module, we've just to create a new ```.py``` file with the module name and then import it using the Python file name using the ```import``` command.

```python
import foo
```

### Packages

Packages are name-spaces which contain multiple packages and modules themselves. They are simply directories in which must contain a special file called ```__init__.py``` that can be empty and indicates that the directory contains a Python package. 

If we create a directory called ```foo```, which marks the package name, we can then create a module inside that package called ```bar``` and add the ```__init__.py``` inside the ```foo``` directory.

To use the module bar, we can import it in two ways:

```python
import foo.bar
```

or

```python
from foo import bar
```

In the ```__init__.py``` file, we can define which module the package will export and which module we will keep internal by overriding the ```__all__``` variable like this:

```python
__all__=["bar"]
```