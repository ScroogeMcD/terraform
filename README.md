## Terraform

### IaaC : Infrastructure as a Code   
* managing infrastructure in a file, rather than manually configuring resources in a user interface
* a resource is any piece of infrastructure in a given environment, such as virtual machines, security groups, network interfaces etc.
* terraform allows operators to author HCL(Hashicorp Configuration Language) files defining resources on multiple providers
* it automates the creation of these resources at the time of apply
* examples of providers : AWS, GCP, GitHub, Docker etc.

### some terraform commands
* terraform init
* terraform plan
* terraform apply
* terraform destroy
