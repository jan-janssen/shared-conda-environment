#!/bin/bash
repo_path="/u/janj/projects/my-conda-environment"
env_path=${repo_path}"/cmti_x64"

# store intel environment
cd ${env_path}
conda update --all -y
conda clean --all -y
conda env export > environment.yml
git add environment.yml
