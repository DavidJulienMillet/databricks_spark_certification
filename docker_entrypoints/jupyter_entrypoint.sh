#! /bin/bash

# Configure the  virtualenv and launch Jupyter
cd project 
python3.8 -m venv venv
. venv/bin/activate
pip install --upgrade pip
pip install notebook==6.0.3
pip install jupyter_contrib_nbextensions
pip install jupyter_nbextensions_configurator
jupyter contrib nbextension install --user
jupyter nbextensions_configurator enable --user
pip install -r requirements.txt
. /run/secrets/sec_jupyter
python3 -c "from notebook.auth import passwd; print('JUPYTER_TOKEN='+passwd('${JUPYTER_PASSWORD}'))" > jupyter_token.txt
. ./jupyter_token.txt
rm jupyter_token.txt
jupyter notebook --ip=0.0.0.0 --port=$CONT_PORT --allow-root --NotebookApp.password=$JUPYTER_TOKEN
