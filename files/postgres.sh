sudo -u postgres psql <<EOF
CREATE USER airflow PASSWORD 'airflow';
CREATE DATABASE airflow;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO airflow;
EOF