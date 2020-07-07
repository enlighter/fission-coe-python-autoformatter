# fission-coe-python-autoformatter

This utilises [Yapf](https://github.com/google/yapf) formatter from Google for Python. It uses the prefedined formatting style called `facebook` 
provided by **yapf**.

To use this, first you will need to create the docker image:
- If you donot have docker installed in your machine, refer to this guide: https://docs.docker.com/engine/install/
- For your help, a helper script named *"build-docker.sh"* is present in this repository. Just run it : `./build-docker.sh`
- That should create a new docker image named *"fission-python-autoformatter:latest"* in your machine.

The auto-formatter when run on your Python files will edit the files directly and properly format the code according to its standards. So you may commit your code before running the auto-formatter on it. That way you can get a proper diff and can revert back to the code state before it was auto-formatted. Definitely test the code after running the auto-formatter.

How to use this utility for auto-formatting code:
- For your help, a automater script named *"run-autoformatter.sh"* is present in this repository.
- This script takes in one argument as input: the filename or the folder name containing the code to be formatted.
- Usage: `./run-autoformatter.sh <filename>` or `./run-autoformatter.sh <foldername>`
- e.g. for a file *"script.py"*: `./run-autoformatter.sh script.py`; or for a folder *"sample"*: `./run-autoformatter.sh sample`
