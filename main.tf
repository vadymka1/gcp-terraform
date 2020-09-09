 provider "google" {
    # version = "~> 3.0"
    credentials = "${file("/home/electropk/Documents/GCP/vadim-fedorenko-internship.json")}"
    project = "${var.project_name}"
    region  = "${var.region}"
    zone    = "${var.zone}"
 }

module "compute_vpc_network" {
    source =  "terraform-google-modules/network/google"
    version = "~> 2.5"

    project_id = "${lower(var.project_id)}"

    network_name = "${lower(var.network_name)}"

    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name = "${var.subnet_name}"
            subnet_ip = "${var.subnet_ip}"
            subnet_region = "${var.region}"
        }
    ]
}

module "compute_firewall" {
    source = "./modules/compute_firewall"
    network_name = "${var.network_name}"
}

module "compute_instance_template" {
    source = "./modules/compute_instance_template"
    network_name = "${var.network_name}"
}

module "compute_instance_group_manager" {
    source = "./modules/compute_instance_group_manager"
    zone = "${var.zone}"
    instance_template = "${module.compute_instance_template.id}"
}

module "compute_loadbalancer" {
    source = "./modules/compute_load_balancer"
    app_name = "${var.project_name}"
    project_name = "${var.project_name}"
    group = "${module.compute_instance_group_manager.name}"
    group_id = "${module.compute_instance_group_manager.id}"
}