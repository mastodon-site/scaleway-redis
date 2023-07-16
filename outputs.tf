output "redis_cluster_name" {
  value = var.redis_cluster_name
}

output "redis_password" {
  value     = random_password.redis_password.result
  sensitive = true
}

output "redis_private_network" {
  value = scaleway_redis_cluster.main.private_network[*]
}

output "redis_username" {
  value = "uuid-${random_uuid.redis_username.result}"
}