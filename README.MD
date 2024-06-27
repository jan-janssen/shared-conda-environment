# Shared Conda Environment
Install the same conda environment on all your computers. The environments are centrally built using a [Github Action](https://docs.github.com/en/actions). 

## Update your computer
Download the `environment.yml` file for the latest release for your operation system:
https://github.com/jan-janssen/my-conda-environment/releases

Install the environment in the `environment.yml` locally using:
```
mamba env update --name base --prune --file environment.yml
```

While it is possible to replace the `mamba` command with the corresponding `conda` command, by just replacing `mamba` with `conda`, the use of `mamba` is highly recommended. 

## Setup a new computer
In addition to the `environment.yml` files, the releases also include installers for Windows, MacOS and Linux:
https://github.com/jan-janssen/my-conda-environment/releases

## Keep the environments up to date
This repository uses the [dependabot](https://github.com/dependabot) from Github, to receive automatic pull request when one of the dependencies in the `requirements.txt` file changes. 

Currently, [dependabot](https://github.com/dependabot) does not support conda `environment.yml` files, so the conda `environment.yml` files have to be updated manually. Still the [dependabot](https://github.com/dependabot) pull request help to get informed when a package changes. 

When updating, adding or removing a dependency it is important to modify both the `requirements.txt` file and the `environment.yml` file. 

In the `environment.yml` file you can use the following comments after the name and version of a package to restrict it to specific architectures: 
* `- test=0.0.1  # [linux]` to install the package only on Linux
* `- test=0.0.1  # [macos]` to install the package only on MacOS
* `- test=0.0.1  # [unix]` to install the package on Linux and MacOS
* `- test=0.0.1  # [win]` to install the package on Windows

Only these four labels are supported. Other labels or variations of these labels like `# [not win]` are not supported. 

Every push to the `main` branch results in a new release, consequently only one release per day is possible. To release multiple updates on a day, just remove the previous release and tag. 
