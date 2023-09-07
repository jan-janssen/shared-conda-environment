#!/bin/bash
repo_path="/Users/janssen/Projects/my-conda-environment"
intel_path=${repo_path}"/macbookair_work"

# store intel environment
cd ${intel_path}
conda update --all -y
conda clean --all -y
conda env export > environment.yml
git add environment.yml
