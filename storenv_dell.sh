#!/bin/bash
repo_path="/home/jan/projects/my-conda-environment"
env_path=${repo_path}"/linux_dell_x64"

# store intel environment
cd ${env_path}
conda update --all -y
conda clean --all -y
conda env export > environment.yml
git add environment.yml
