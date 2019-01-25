FROM puckel/docker-airflow

COPY  /scripts/. /usr/local/airflow/dags     
    

# Make port 80 available to the world outside this container
EXPOSE 80