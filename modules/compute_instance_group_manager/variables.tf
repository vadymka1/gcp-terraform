variable "name" {
    description = "Name of instances group"
    default = "dev-instance-group"
}


variable "base_instance_name" {
    description = "Default instance name"
    default = "dev-instance"
}

variable "http_port" {
    description = "Default source image"
    default = "ubuntu-os-cloud/ubuntu-minimal-1804-lts"
}