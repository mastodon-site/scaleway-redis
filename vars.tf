
############################
#### Scaleway variables ####

variable "scaleway_project_id" {
  description = "Scaleway project ID"
  type        = string
}

variable "scaleway_region" {
  description = "Scaleway region ID"
  type        = string
}

variable "scaleway_zone" {
  description = "Scaleway zone ID"
  type        = string
}

############################
##### Module variables #####

variable "private_network_id" {
  description = "ID of the private network in which to place the Redis cluster"
  type        = string
}

variable "redis_cluster_name" {
  description = "Name of the Redis cluster to create"
  type        = string
}

variable "redis_cluster_size" {
  description = "Number of nodes for the Redis cluster (1 or 3+)"
  type        = string
  default     = "1"
}

variable "redis_max_connections" {
  description = "Maximum connections to the Redis cluster"
  type        = string
  default     = "1000"
}

variable "redis_node_type" {
  description = "Type of node to use for the Redis cluster"
  type        = string
  default     = "RED1-MICRO"
}

variable "redis_version" {
  description = "Redis version to use"
  type        = string
  default     = "7.0.5"
}
