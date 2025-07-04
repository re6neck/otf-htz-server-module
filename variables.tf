variable "hcloud_token" {
    description = "Hetzner Cloud API token"
    type        = string
    sensitive   = true
}

variable "server_name" {
    description = "Name of the Hetzner server"
    type        = string
}

variable "server_type" {
    description = "Type of the Hetzner server"
    type        = string
    default     = "cax11"
}

variable "server_location" {
    description = "Location for the server"
    type        = string
    default     = "nbg1"
}

variable "image" {
    description = "Image to use for the server"
    type        = string
    default     = "debian-12"
}

variable "ssh_keys" {
    description = "List of SSH key names or IDs to inject"
    type        = list(string)
    default     = []
}

variable "cloud_init" {
    type = object({
        gzip          = bool
        base64_encode = bool
        config        = any
    })
    description = "Cloud-init user data to configure the server"
    default = {
        gzip          = true
        base64_encode = true
        config        = {}
    }
}