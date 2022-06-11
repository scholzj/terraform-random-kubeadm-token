output "token" {
  description = "Kubeadm token"
  value       = templatefile("${path.module}/templates/token.tpl", { token1 = join("", random_shuffle.token1.result), token2 = join("", random_shuffle.token2.result) } )

  depends_on = [
    random_shuffle.token1,
    random_shuffle.token1,
  ]
}

