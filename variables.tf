variable "project_name" {
    description = "Project name"
    default     = "vadim-fedorenko-internship"
}

variable "region" {
    description = "Default region for project"
    default     = "us-central1"
}

variable "zone" {
    description = "Default zone in region"
    default     = "us-central1-c"
}

variable "project_id" {
    description = "Project id in GCP"
    default     = "vadim-fedorenko-internship"
}

variable "network_name" {
    description = "Network name"
    default     = "dev-vpc"
}

variable "subnet_name" {
    description = "Subnet default name"
    default = "dev-subnet"
}

variable "subnet_ip" {
    description = "Subnet ip"
    default = "10.0.0.0/9"
}