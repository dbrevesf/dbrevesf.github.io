---
title:  "Python Revision - Section V - OOP"
date:   2018-08-07 18:50:00
categories: [Python]
tags: [python, oop, object-oriented-programming, programming]
---

Object-Oriented Programming (OOP) is a programming paradigm based on the concept of objects. Each object is an instance of a class. Each class is defined by its attributes and its methods. Attributes are characteristics of an object. Methods are operations we can perform with the object. A class is a blueprint that defines the nature of a future object. Let’s see an example and how a class is created in Python:

```python
class Dog(object):
    def __init__(self, breed):
        self.breed = breed

    def bark(self):
        print("Woof!")

```

As we can see, we have a class called ```Dog``` which obviously define a dog. The dog has a breed, thus the ```breed``` is an attribute of a dog. The dog barks and it’s defined as the function ```bark```. But, as we’re in the class context, we don’t call it function, we call it method


### \__init__

This method is called as soon as an object is instantiated. It’s in this method that we initialize every single attribute of a class. 

### Class Object Attributes

It’s a method that it’s the same for any instance of the class. Using the ‘dog’ example above, we can say that every dog is a mammal, so we can define an attribute that will be ‘mammal’ for every single instance of a dog:

```python
class Dog(object):

    # Class Object Attribute
    species = 'mammal'

    def __init__(self, breed):
        self.breed = breed

    def bark(self):
        print("Woof!")
```

When we have to use an attribute, we use the keyword ```self``` before the attribute, like ```self.breed```. But, if we need to use a Class Object Attribute inside the ```__init__``` method, we can’t use self because the object wasn’t created yet, so we use it using the name of the class followed by the attribute name, like ```Dog.species``.

### Static Methods

As we have a Class Object Attribute, we also can write static methods that are methods which can be called without requiring an instance. And, since instances are always referenced through ```self```, static methods have no access to self and have no ```self`` parameter. An example of a static method using the Dog class could be ```eat```. No matter what kind of dog is, it will always eat. So we can create a static method for ```eat```:

```python
class Dog(object):

    # Class Object Attribute
    species = 'mammal'

    def __init__(self, breed):
        self.breed = breed

    def bark(self):
        print("Woof!")

    @staticmethod
    def eat():
        print("Eating")
```

The ```@staticmethod```decorator is used to make it clear that this method should not receive the instance (```self```) as the first parameter. 

### Class Methods

A variant of the static method. Instead of receiving the instance as the first parameter, it's passed the class. 

```python
class Dog(object):

    # Class Object Attribute
    species = 'mammal'

    def __init__(self, breed):
        self.breed = breed

    def bark(self):
        print("Woof!")

    @staticmethod
    def eat():
        print("Eating")

    @classmethod
    def is_bulldog(cls):
        return cls.breed == 'bulldog'
```


### Inheritance

Using classes that have already been defined to create new classes is called inheritance.

```python
class Animal(object):

    def __init__(self):
        print("Animal Created")

    def whoAmI(self):
        print("Animal")

    def eat(self):
        print("Eating")

class Dog(Animal):

    def __init__(self):
        Animal.__init__(self)
        print("Dog created")

    def whoAmI(self):
        print("Dog")

    def bark(self):
        print("Woof")
```

As we can see, a Dog is defined from the Animal class, inheriting its methods
and attributes. The derived classes override or extend the functionalities
of base classes. For example, the Dog object overrides the method ```whoAmI```
but extends the method ```eat``` from Animal.


### Abstract Base Class

Sometimes we need to define a class to be inherited but that we don’t need to use it (and sometimes we shouldn’t). Let’s use the example of the class Animal. We can say that we don’t have the object Animal in the real world. Animals are an abstraction of a set of species. So, dogs, cats, cows, frogs, birds, etc… all of them belongs to the Animal world and share some attributes. But, we can create a single Animal with just these attributes. We need to add some other attributes in order to create an Animal called Dog, for instance. So, that’s why we need the Abstract Base Class concept. It’s a kind of class that we create just in order to be inherited by another class. With ABC we can reduce the amount of code and avoid code repetition.

Abstract Classes contains one or more abstract methods that should be implemented by its subclasses.

Although, the Python language by itself doesn’t provide abstract classes. So, in order to implement it, we need to call a module which provides the infrastructure for defining Abstract Base Classes.

```python
from abc import ABC, abstractmethod

class Animal(ABC):

    def __init__(self, specie):
        self.specie = specie

    @abstractmethod
    def whoAmI(self):
        pass
```

Since the Animal has an abstract method called ```whoAmI``` , we can't directly create an instance of Animal. Otherwise, we'll be warned with an error message. But, we can create a Dog class, which inherits from Animal and implements the abstract method defined in the Animal class:

```python
class Dog(Animal):

    def whoAmI(self):
        print(self.specie)
```

To instantiate a Dog we need to pass the ```specie``` value that the class ```Animal```
requires. 

```python
dog = Dog('dog')
dog.whoAmI()
# prints "dog"
```

Even if we write some implementation of an abstract method in an abstract class, we do need to override it in a subclass. But, once we have this implementation, we can call it through the ```super``` keyword. 

```python
from abc import ABC, abstractmethod

class Animal(ABC):

    def __init__(self, specie):
        self.specie = specie

    @abstractmethod
    def whoAmI(self):
        print("Animal")

class Dog(Animal):

    def whoAmI(self):
        super().whoAmI()
        print(self.specie)

dog = Dog('dog')
dog.whoAmI()
# prints "Animal" and "dog"
```

### Polymorphism

It's the way in which different object classes can share the same method name, and those methods can be called from the same place even though a variety of different objects might be passed in.

```python

class Dog(Animal):

    def whoAmI(self):
        super().whoAmI()
        print(self.specie)

    def speak(self):
        return self.name+'says Woof!'

class Cat(Animal):

    def whoAmI(self):
        super().whoAmI()
        print(self.specie)

    def speak(self):
        return self.name+'says Meow!'

```

The both Dog and Cat classes have a ```speak`` method. We can demonstrate polymorphism writing a function that receives objects of both classes and calls the same method:

```python
def pet_speak(pet):

    print(pet.speak())

niko = Dog('dog')
felix = Cat('cat')
pet_speak(niko)
pet_speak(felix)

#prints
# Niko says Woof!
# Felix says Meow!
```
The method ```speak``` is useful in the Dog and in the Cat class. So, it's a
good example of a method that we could write in the Abstract Base Class Animal. The final implementation of these methods will be:


```python
from abc import ABC, abstractmethod

class Animal(ABC):

    def __init__(self, specie, name):
        self.specie = specie
        self.name = name

    @abstractmethod
    def whoAmI(self):
        print("Animal")

    @abstractmethod
    def speak(self):
        pass

class Dog(Animal):

    def whoAmI(self):
        super().whoAmI()
        print(self.specie)

    def speak(self):
        return self.name+'says Woof!'


class Cat(Animal):

    def whoAmI(self):
        super().whoAmI()
        print(self.specie)

    def speak(self):
        return self.name+'says Meow!'
```

### Special Methods

There are some special methods that allow us to use Python specific functions on objects created through our class. They are:

- ```__init__()```
Called as soon as the object is instantiated.

- ```__str___()```
When we call ```print(object)``` it's what it's in the ```__str__()``` method that is shown. 

- ```__len__()```
When we call ```len(object)``` it's what it's in the ```__len__()``` method that is shown. 

- ```__del__()```
When we call ```del object```, the object is destroyed and it's what it's in the ```__del__()``` method that is shown. 

```python
class Book:

    def __init__(self, title, author, pages):
        print("A book is created")
        self.title = title
        self.author = author
        self.pages = pages

    def __str__(self):
        return "Title: %s, Author:%s, pages: %s" % (self.title, self.author, self.pages)

    def __len__(self):
        return self.pages

    def __del__(self):
        print("A book is destroyed")



book = Book("Gibi da Monica", "Mauricio de Souza", "10")
#> "A book is created"

print(book)
#> "Title: Gibi da Monica, Author: Mauricio de Souza, pages: 10"

print(len(book))
#> 10

del book
#> A book is destroyed
```


### Encapsulation

#### Private Methods

In Python, we can implement encapsulation but it can't restrict the access to methods and variables. We can prevent the data from being modified by accident, but if someone wants to modify a variable or execute a private method, he or she will do it. Let's see some examples:

We can create a class Car which has two methods: ```drive()```and ```update_software()```. When a car object is created, it will call the private method ```__updateSoftware()```. This method cannot be called on the object directly, only from within the class.

```python
class Car:

    def __init__(self):
        self.__updateSoftware()

    def drive(self):
        print('Driving')

    # private method
    def __updateSoftware(self):
        print('Updating software')

redcar = Car()
# Updating software
redcar.drive()
# Driving
redcar.__updateSoftware()
# AttributeError: 'Car' object has no attribute '__updateSoftware'
```

The two underscores before the method's name are just a convention in Python to inform the developer that that method is private. But, behind the scenes, the method ```__updateSoftware``` was just renamed by ```_Car__updateSoftware```. So, if someone wants to call ```__updateSoftware__```
they've just to call ```_Car__updateSoftware```

```python
redcar._Car__updateSoftware()
# Updating software
```

#### Private Variables

Like Private Methods, we can also have private variables and the way of declaring them is putting two underscores before the name when you'll declare a new variable. The reason for the existence of private variables is to restrict some attributes of a class of being changed. 

```python
class Car:

    __maxspeed = 0

    def __init__(self):
        self.__maxspeed = 200

    def drive(self):
            print('driving. maxspeed ' + str(self.__maxspeed)


redcar = Car()
redcar.drive()
#>driving. maxspeed 200
redcar.__maxspeed = 10
# As it's a private variable, it won't be changed
redcar.drive()
#>driving. maxspeed 200
```


Once it's accessed just within the class, the only way of changing a value of a private attribute is through a setter method. 

```python
class Car:

    __maxspeed = 0;

    def __init__(self):
        self.__maxspeed = 200

    def setMaxSpeed(self, speed):
        self.__maxspeed = speed


redcar = Car()
redcar.drive()
#>driving. maxspeed 200
redcar.setMaxSpeed(320)
redcar.drive()
#>driving. maxspeed 320)
```

We still have a convention for protected attributes, that we have to put just one underscore before the attribute name. The fact is that there’s no real encapsulation implemented. In Python, the responsibility of which attribute or method will be changed or used is up to the developer. So, we always need to be careful.


### Metaclasses

In Python, everything's an object, including classes. Thus, we have a class that creates our classes. That class is ```type```. ```type``` it's the built-in metaclass in Python because it generates our classes. It's the class of all of our created classes. Literally a class of classes. But, we can create our own metaclass as well. If we ad the ```__metaclass__``` attribute in a determined class, Python will use it to create all of the classes from this determined class. Briefly, we use metaclasses when we need a way to create a custom class on the fly and they need to be written in a certain way. The metaclass intercepts a class creation, modify the class and return the modified class. 

Yes, it's just a shallow explanation about it and still very complicated. But, let's see what the Python Guru Tim Peters said about metaclasses:

"Metaclasses are deeper magic that 99% of users should never worry about. If you wonder whether you need them, you don't (the people who actually need them know with certainty that they need them, and don't need an explanation about why)"


I hope it will be helpful to you and if there's any questions or something else, please, feel free to contact me. 

*Forte Abraço* 
