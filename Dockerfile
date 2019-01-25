FROM puckel/docker-airflow
COPY  requirements.txt /usr/local/airflow
RUN pip install --trusted-host pypi.python.org -r /usr/local/airflow/requirements.txt 

COPY scripts /usr/local/airflow/dags
CMD ["mkdir","/usr/local/airflow/modules" ]     
COPY modules /usr/local/airflow/modules

ENV EXAMPLE http://localhost/

# Install any needed packages specified in requirements.txt
   


# Make port 80 available to the world outside this container
EXPOSE 8080
