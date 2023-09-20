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

2. deploy Docker images manually onto GCP Cloud run
3. Automated deployment with GitHub Actions
See lab_book/terraform-trial-001.md and .github/workflows/google-cloudrun-docker.yml for entire solution
    - Tested up and running at https://nhl-dashboard-cr-leogdd42mq-uc.a.run.app
    - Fully automated CI/CD for dashboard
    
