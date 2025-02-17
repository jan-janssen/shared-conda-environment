from setuptools import setup, find_packages

with open("../requirements.txt", "r") as f:
    install_requires = []
    for l in f.readlines():
        if l.startswith("mkl=="):
            pass   # mkl is not installed on linux, so it is not checked 
        elif l.startswith("nglview=="):
            pass   # nglview reports itself as 0.0.0 even if the correct version is installed
        elif l.startswith("torch=="):
            pass   # commonly an torch postbuild version is installed
        else:
            install_requires.append(l)

setup(
    name='MetaPackage',  
    install_requires=install_requires,
)
