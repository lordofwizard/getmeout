---
type: 'Page'
collections: 'GNU/Linux'
title: Setting Up Python 3.11 with pyenv on Arch Linux (old doc)
aliases: null
description: null
icon: null
createdAt: '2025-02-26T09:14:16.126Z'
lastUpdated: '2025-02-26T09:26:28.760Z'
tags: [Python, quick]
coverImage: null
---

# Setting Up Python 3.11 with pyenv on Arch Linux (old doc)

```text
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
```

Add the following lines to your shell profile (`~/.bashrc`, `~/.zshrc`, or `~/.profile`):

```text
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
```

Reload your shell configuration:

```text
source ~/.bashrc  # or source ~/.zshrc
```

## Installing Python 3.11

First, update pyenv:

```text
pyenv update
```

Then, install Python 3.11 (replace `3.11.x` with the desired version): (fug this )

```text
pyenv install 3.11.0
```

Set Python 3.11 as the local version:

```text
pyenv global 3.11.0
```

Verify the installation:

```text
/home/lordofwizard/.pyenv/versions/3.11.0/bin/python --version  
```

## Installing pip

After installing Python, install `pip` for the Python 3.11 version:

```text
/home/lordofwizard/.pyenv/versions/3.11.0/bin/python -m ensurepip --default-pip
```

Ensure `pip` is installed correctly:

```text
/home/lordofwizard/.pyenv/versions/3.11.0/bin/pip --version 
```

Upgrade `pip`:

```text
/home/lordofwizard/.pyenv/versions/3.11.0/bin/pip install --upgrade pip
```

## Creating a Virtual Environment with Python 3.11

Now, create a virtual environment using Python 3.11:

```text
/home/lordofwizard/.pyenv/versions/3.11.0/bin/python -m venv my_venv
```

Activate the virtual environment:

```text
source my_venv/bin/activate
```

Verify the Python version inside the virtual environment:

```text
python --version 
```

To deactivate the virtual environment:

```text
deactivate
```

