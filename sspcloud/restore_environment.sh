#!/bin/bash
echo "Executing the restore_environment.sh script"

# Change directory
cd $MY_REPO

# Create a virtual environment and install project dependencies

# OWN CODE TO RUN WITH JUPYTER-PYTHON BEGIN:
# replaced: uv sync 

#uv add --dev ipykernel   # try removing - OWN CODE
uv sync

#uv run python -m ipykernel install --user --name my-project --display-name "Python (my-project)"   # try removing - OWN CODE

# OWN CODE TO RUN WITH JUPYTER-PYTHON END.

# Change directory
cd ..

# Set VSCode's default interpreter path
mkdir -p .vscode
echo "{ \"python.defaultInterpreterPath\": \"./$MY_REPO/.venv/bin/python\" }" >> .vscode/settings.json

# Set Quarto default interpreter path
export QUARTO_PYTHON=./$MY_REPO/.venv/bin/python
