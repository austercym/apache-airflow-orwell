FROM puckel/docker-airflow

WORKDIR /scripts

COPY . /usr/local/airflow/dags     
    

# Make port 80 available to the world outside this container
EXPOSE 80