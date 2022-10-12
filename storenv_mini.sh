#!/bin/bash
repo_path="/Users/jan/PycharmProjects/my-conda-environment"
apple_path=${repo_path}"/macmini_apple"
intel_path=${repo_path}"/macmini_intel"

# store apple environment
cd ${apple_path}
source ~/.zshrcapple
conda update --all -y
conda clean --all -y
conda env export > environment.yml
git add environment.yml

# store intel environment
cd ${intel_path}
source ~/.zshrcintel
conda update --all -y
conda clean --all -y
conda env export > environment.yml
git add environment.yml
