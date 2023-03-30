#!/bin/bash 

if [ -d "/root/airflow/" ]; then

    if [ 1 ]; then 

    sudo sed -i '/executor = SequentialExecutor/ s/SequentialExecutor/LocalExecutor/' /root/airflow/airflow.cfg;
    sudo sed -i "s|sqlite:////var/www/airflow//airflow.db|postgresql+psycopg2://airflow:airflow@localhost/airflow|g" /root/airflow/airflow.cfg      
    else
    :

    fi
    sudo airflow scheduler

fi
