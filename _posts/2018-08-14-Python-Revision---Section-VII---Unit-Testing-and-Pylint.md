---
title: "Python Revision - Section VII - Unit Testing and Pylint"
date:  2018-08-14 15:49:40
categories: [Python]
tags: [python, unit testing, pylint, programming]
---

### Pylint

A library which checks the code for possible errors and styling. We can install it through ```pip install pylint``` and run it over a file with the command: 

```pylint <file.py>```. 



### Unit Test

In Python, we have this built-in library called ```unittest``` which we can use to check if some code is working properly regarding the inputs and the outputs. For example, we can have a module that receives a text and returns the capitalized text:

```python
#cap.py

def cap_text(text):

    return text.title()

```

So, we need a safe and fast way to check if our method is working correctly. This way is creating unit tests. To write a unit test you need to know which output your module must return given a certain input. For example, in the cap_text, we need to make sure that if the text 'python' was passed as an input, the module should return 'Python' as an output. So:

```python
#cap_test.py
import unittest
import cap

class TestCap(unittest.TestCase):

    def test_one_word(self):
        text = 'python'
        result = cap.cap_text(text)
        self.assertEqual(result, 'Python')

if __name__ == '__main__':
    unittest.main()

```

Executing the file ```cap_test.py``` written above, the unitttest library will run the method ```def test_one_word()``` and will verify if the method ```cap.cap_text()``` it's working fine! If it's not, we will be informed that we have an inconsistency in our code and that we need to fix it. 

Unit tests are extremely useful to guarantee that some change in the code won't affect a code that's running without errors. We can run it every time that we add a new module or make a bugfix and in that way, we will have a more stable code.

___

I hope it will be helpful to you and if there's any questions or something else, please, feel free to contact me. 

*Forte Abraço* 
