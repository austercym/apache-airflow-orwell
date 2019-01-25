to build image
docker build --tag=apache_airflow_orwell .

to run 
docker run -d -p 8080:8080 apache_airflow_orwell webserver

