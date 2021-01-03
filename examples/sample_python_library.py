from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import keyword, library

@keyword('User defined robot keyword')
def getUsername():
    """ Returns a random generated string as username """
    letters = string.ascii_lowercase
    username = ''.join(random.choice(letters) for i in range(8))
    return username

@keyword('Define your keyword here')
def function_for_robot(arg1,arg2):
    # something here
