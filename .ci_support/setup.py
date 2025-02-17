from setuptools import setup, find_packages

with open("../disableautomerge.txt", "r") as f:
    disable_lst = f.readlines()

with open("../requirements.txt", "r") as f:
    install_requires = []
    for l in f.readlines():
        skip = False
        for disable in disable_lst:
            if l.startswith(disable + "=="):
                skip = True
        if not skip:
            install_requires.append(l)

setup(
    name='MetaPackage',  
    install_requires=install_requires,
)
