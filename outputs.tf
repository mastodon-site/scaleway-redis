output "redis_cluster_name" {
  value = var.redis_cluster_name
}

output "redis_private_network" {
  value = scaleway_redis_cluster.main.private_network
}

output "redis_username" {
  value = random_uuid.redis_username.result
}