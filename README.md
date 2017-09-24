# Terraform module for generating kubeadm tokens

[Kubeadm](https://kubernetes.io/docs/admin/kubeadm/) is a setup tool for Kubernetes clusters. It requires a token which should be in the format of 6 characters, a dot and 16 characters (e.g. `ez7l6v.ez7l6vx89jbuspwc`). This module allows geenrating this token in Terraform.

## Generating the token

The token can be generated with following commands:
```
terraform init
terraform apply
``` 

## Including the module

Although it can be run on its own, the main value is that it can be included into another Terraform configuration which is using Kubeadm.

```hcl
module "kubeadm-token" {
  source = "github.com/scholzj/terraform-kubeadm-token"
}

output "new_token" {
  value = "${module.kubeadm-token.token}"
}
```