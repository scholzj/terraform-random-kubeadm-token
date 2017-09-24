output "token" {
    value = "${data.template_file.kubeadm_token.rendered}"
}