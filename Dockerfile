FROM puckel/docker-airflow

#WORKDIR /script

COPY scripts/* /usr/local/airflow     