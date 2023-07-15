resource "scaleway_secret" "main" {
  name = "redis--${var.redis_cluster_name}"
}

resource "scaleway_secret_version" "latest" {
  secret_id = scaleway_secret.main.id
  data      = random_password.redis_password.result
}