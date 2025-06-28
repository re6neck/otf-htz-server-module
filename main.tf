resource "hcloud_server" "vm" {
    name        = var.server_name
    server_type = var.server_type
    location    = var.server_location
    image       = var.image
    ssh_keys    = var.ssh_keys
}

output "ipv4_address" {
    value = hcloud_server.vm.ipv4_address
}