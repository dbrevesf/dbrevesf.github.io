---
title: "Python Revision - Section VI - Modules and Packages"
date:  2018-08-13 20:00:28
categories: [Python]
tags: [python, modules, packages, programming]
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

### The ```__name__ == '__main__'``` verification

When we create a new module we can use it imported in other modules but we also would want to use it as a script. To make this differentiation we need to check if ```__name__ == '__main__'```. Because if it's true, that's because the module was called directly, as a script and if it's not, the module was imported. So, it's pretty usual that in a module we have this kind of implementation:

```python
def func1():
    pass

def func2():
    pass

if __name__ == '__main__':
    func1()
    func2()
```
___

I hope it will be helpful to you and if there's any questions or something else, please, feel free to contact me. 

*Forte Abraço* 