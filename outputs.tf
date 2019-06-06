output "token" {
  description = "Kubeadm token"
  value       = data.template_file.kubeadm_token.rendered
}

