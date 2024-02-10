# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have git and stow installed on your system

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/JoFaHD/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

to overwrite existing files with the ones from this repo use

```
$ stow . --adopt
```
