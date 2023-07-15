resource "random_uuid" "redis_username" {
}

resource "random_password" "redis_password" {
  length           = 30
  min_lower        = 2
  min_upper        = 2
  min_numeric      = 2
  min_special      = 2
  override_special = "#[]{}"

}

resource "scaleway_redis_cluster" "main" {
  name         = var.redis_cluster_name
  node_type    = var.redis_node_type
  version      = var.redis_version
  user_name    = random_uuid.redis_username.result
  password     = random_password.redis_password.result
  cluster_size = var.redis_cluster_size
  tls_enabled  = "false"

  settings = {
    "maxclients"    = var.redis_max_connections
    "tcp-keepalive" = "120"
  }

  private_network {
    id = var.private_network_id
  }

  lifecycle {
    ignore_changes = [
      private_network
    ]
  }
}