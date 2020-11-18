# Notebook to train for the  Databricks Certified Associate Developer for Apache Spark 3.0 


## Docker configuration for the notebook

### Install docker and docker compose for ubuntu

Install curl

```sudo apt update && sudo apt upgrade```

```sudo apt install curl```

Install docker 

```sudo apt-get remove docker docker-engine docker.io containerd runc```

```
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
```

```curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - ```

``` 
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" 
```

Install the docker engine

``` sudo apt-get update ```

``` sudo apt-get install docker-ce docker-ce-cli containerd.io ```

Install docker compose

```sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose ```

``` sudo chmod +x /usr/local/bin/docker-compose```

### Project Architecture

```
Databricks
|-- readme.md
|-- .gitignore
|-- docker-compose.yml
|-- docker_entrypoints
|-- |-- jupyter_entrypoint.sh
|-- docker_passwords
|-- |-- jupyter_password.txt
|-- dockerfiles
|-- |-- jupyter_spark_dockerfile

|-- docker_volumes
|-- |-- databricks_certification
|-- |-- |-- requirements.txt
|-- |-- |-- Revision.ipynb
|-- |-- |-- venv/
|-- |-- |-- data/
```


## Launch the notebook


## Command to launch container

Change the file Databricks/docker_passwords/jupyter_password.txt.example to jupyter_password.txt, changing the password you want for jupyter token.

Run command with docker compose

``` docker-compose up -d ```

Stop and remove the container with

``` docker-compose down ```  

## Access the notebook

Access the notebook through the browser address localhost:8880

And make identification with the password you wrote in
Databricks/docker_passwords/jupyter_password.txt

