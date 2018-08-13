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

