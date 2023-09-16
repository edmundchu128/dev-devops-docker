# dev-devops-docker
This repository is an experimental repository for deploying dockerized applications to cloud.

Technologies that are to be experimented on:
1. Creating docker containers, containing:

- StreamLit Dashboard (tested working on local)
    - It does not need a spark cluster to do data fetching
    - Look into delta-rs to avoid using spark cluster

- SonarQube
    - Requires this to be deployed before PR
    - PR only passes if it passes SQ
    - Requires a stage in GitHub Action SQ

- PySpark Shell (This can be simplified by using resources such as DataProc or Databricks therefore not needed) 

Next phase:
- Kafka

2. deploy Docker images manually onto GCP Compute Engine
3. Automated deployment with GitHub Actions
