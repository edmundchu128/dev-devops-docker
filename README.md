# dev-devops-docker
This repository is an experimental repository for deploying dockerized applications to cloud.

Technologies that are to be experimented on:
1. Creating docker containers
2. Terraform deployment Docker images onto GCP Compute Engine; Requires both Terraform and GitHub action yaml
3. Automated deployment with GitHub Actions


1a: 
- StreamLit Dashboard (tested working on local)
    - follow streamlit-trial-001-FIX.md's code
    - https://docs.streamlit.io/knowledge-base/tutorials/deploy/kubernetes

1b:
- SonarQube
    - option 1: $ docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest
    - option 2: Use bitnami/sonarqube for quicker install/deployment
    - Requires this to be deployed before PR
    - PR only passes if it passes SQ
    - Requires a stage in GitHub Action SQ
2a:
- Deploy SonarQube to cloud and run GitHub Checks as one of the stages
    

1c:
- PySpark Shell (This can be simplified by using resources such as DataProc or Databricks therefore not needed) 
    - It does not need a spark cluster to do data fetching
    - Look into delta-rs to avoid using spark cluster

TBC:

- Kafka
    - Use bitnami/kafka for quicker install/deployment
    - needs to set up a functional kafka streaming pipeline

- Airflow
    - Use bitnami/airflow for quicker install/deployment






