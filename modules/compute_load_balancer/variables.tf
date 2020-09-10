variable "name" {
    description = "Name of loadbalancer"
    default = "dev-loadbalancer"
}

variable "backend_name" {
    description = "Name of backend service for load balancer"
    default = "dev-backendservice"
}

variable "healthcheck_name" {
  default = "dev-healh-check"
}

variable "project" {
  description = "The project ID to create the resources in."
  default     = "vadim-fedorenko-internship"
}

variable "app_name" {
  description = "App name"
}

variable "project_name" {
  description = "Project name"
}

variable "group" {
  description = "Instance group"
}

variable "group_id" {
  description = "Group id"
}

variable "instance_group" {
  description = "instance_group id"
}

variable "self_link_group" {
  description = "instance_group id"
}

variable "group_name" {
  default = "projects/vadim-fedorenko-internship/zones/us-central1-c/instanceGroups/dev-instance-group"
}

