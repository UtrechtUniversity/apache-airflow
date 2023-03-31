#!/bin/bash 

if [ -d "/var/www/airflow/" ]; then

    if [ 1 ]; then 
    sudo sed -i '/load_examples = True/ s/True/False/' /var/www/airflow/airflow.cfg
    sudo sed -i '/executor = SequentialExecutor/ s/SequentialExecutor/LocalExecutor/' /var/www/airflow/airflow.cfg
    sudo sed -i "s|sqlite:////var/www/airflow/airflow.db|postgresql+psycopg2://airflow:airflow@localhost/airflow|g" /var/www/airflow/airflow.cfg      
    else
    :

    fi
    sudo airflow db upgrade;
    sudo airflow webserver

fi
