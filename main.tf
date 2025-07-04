data "cloudinit_config" "user_data" {
  gzip          = var.cloud_init["gzip"]
  base64_encode = var.cloud_init["base64_encode"]

  part {
    filename     = "cloud-config.yml"
    content_type = "text/cloud-config"
    content      = yamlencode(var.cloud_init["config"])
  }
}

resource "hcloud_server" "vm" {
    name        = var.server_name
    server_type = var.server_type
    location    = var.server_location
    image       = var.image
    ssh_keys    = var.ssh_keys
    user_data   = data.cloudinit_config.user_data.rendered
}