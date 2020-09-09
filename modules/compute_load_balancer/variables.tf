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