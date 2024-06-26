# My Conda Environment
Maintain the same conda environment over different machines with different operation systems. 

## Update your computer
Download the latest release for your corresponding operation system:
https://github.com/jan-janssen/my-conda-environment/releases

Install environment in `environment.yml` locally using:
```
mamba env update --name base --file environment.yml --prune
```

While it is possible to replace the `mamba` command above with the corresponding `conda` command by just replacing `mamba` with `conda` the use of `mamba` is highly recommended. 

## Keep the environments up to date
This repository uses the [dependabot](https://github.com/dependabot) from Github, to receive automatic pull request when one of the dependencies in the `requirements.txt` file changes. 

Currently, [dependabot](https://github.com/dependabot) does not support conda `environment.yml` files, so the conda `environment.yml` files have to be updated manually. Still the [dependabot](https://github.com/dependabot) pull request help to get informed when a package changes. 

Every push to the `main` branch results in a new release, so only one release per day is possible. To release multiple updates on one day, just remove the previous release. 
