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
Roles needed: Editor (and required permission based on TF config)
Save the json key into GitHub secrets
2. Enable API: Cloud Resource Manager API