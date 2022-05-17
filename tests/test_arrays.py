import pytest
from subprocess import check_output
import os.path
from os import path

def main():

   print ("Is it Directory?" + str(path.isdir('guru99.txt')))
   print ("Is it Directory?" + str(path.isdir('myDirectory')))

if __name__== "__main__":
   main()

script_path = "./array.sh"

def run_shell_test(script, arg1):
    out = check_output([script, str(arg1)], universal_newlines=True)
    return out.split("\n")[0]

# Fix later
#TODO: Add more tests
def test_case1():
    number = 5

    result = run_shell_test(script_path, str(number))

    assert path.isdir('./folder_f') == False
    assert path.isdir('./folder_a') == True

