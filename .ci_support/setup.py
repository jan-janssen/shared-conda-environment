from setuptools import setup, find_packages

with open("requirements.txt", "r") as f:
  install_requires=f.readlines()

setup(
    name='MetaPackage',  
    install_requires=install_requires,
)
