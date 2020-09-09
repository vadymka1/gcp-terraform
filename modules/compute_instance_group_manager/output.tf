output "name" {
    value = "${google_compute_instance_group_manager.dev-instance-group.name}"
}

output "id" {
    value = "${google_compute_instance_group_manager.dev-instance-group.self_link}"
}