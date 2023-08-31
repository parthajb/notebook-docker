FROM jupyter/base-notebook:latest

# Install JupyterLab if not already present in the base image
RUN pip install jupyterlab

# Install necessary python packages for the extensions and the requested packages
RUN pip install jupyterlab_code_formatter black numpy pandas pyspark json boto3 psycopg2

# Install JupyterLab extensions
RUN jupyter labextension install @ryantam626/jupyterlab_code_formatter
RUN jupyter labextension install @jupyterlab/debugger
RUN jupyter labextension install jupyterlab-scheduler
RUN jupyter labextension install @jupyterlab/git

# Enable the server extension for jupyterlab_code_formatter
RUN jupyter server extension enable --py jupyterlab_code_formatter

# Copy the jupyterlab configuration

COPY jupyterlab_config.py /home/jovyan/.jupyter/jupyter_notebook_config.py
