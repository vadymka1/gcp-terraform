variable "name" {
    description = "Name of instances group"
    default = "dev-instance-group"
}


variable "base_instance_name" {
    description = "Default instance name"
    default = "dev-instance"
}

variable "http_port" {
    description = "Default http port"
    default = "80"
}

variable "ssh_port" {
    description = "Default ssh port"
    default = "22"
}