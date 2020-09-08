variable "name" {
    description = "Name of template"
    default = "dev-instance-template"
}


variable "machine_type" {
    description = "Default machine type"
    default = "e2-small"
}

variable "source_image" {
    description = "Default source image"
    default = "ubuntu-os-cloud/ubuntu-minimal-1804-lts"
}