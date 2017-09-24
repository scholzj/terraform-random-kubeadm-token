module "kubeadm-token" {
  source = "github.com/scholzj/terraform-kubeadm-token"
}

output "new_token" {
  value = "${module.kubeadm-token.token}"
}