output "server_ip_v4" {
    value = hcloud_server.vm.ipv4_address
  
}

output "server_ip_v6" {
    value = hcloud_server.vm.ipv6_address
  
}

output "server_id" {
    value = hcloud_server.vm.id
}