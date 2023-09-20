## Terraform deployment of resources

[Link to medium post by Vikram Shinde](https://medium.com/interleap/automating-terraform-deployment-to-google-cloud-with-github-actions-17516c4fb2e5)

### Typical workflow of TF

terraform init
terraform validate
terraform fmt
terraform plan
terraform apply

We will need to create jobs/steps on GitHub Action for each of these steps.

### Local testing with TF
Install TF through
```choco install terraform```


### Configuring the Google Project
1. Create service account for the google project specific to the GitHub Actions
    - Roles needed: Artifact Registry Admin
    - Save the json key into GitHub secrets
2. Enable API: Cloud Resource Manager API

3. Create a Google Cloud Storage bucket to serve as TF backend
    - add config to backend.tf
    - terraform init requires credentials because it reads the bucket tfstate before plan

### Input variables
terraform -chdir=${{env.TF_CHDIR}} init -var 'artifact_reg_repo_service=${{env.SERVICE}}' -var 'dashboard_image_name=${{env.SERVICE}}'

