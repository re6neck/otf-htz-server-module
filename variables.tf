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
    description = "Type of the Hetzner server (e.g., cx11, cx21)"
    type        = string
    default     = "cx11"
}

variable "server_location" {
    description = "Location for the server (e.g., fsn1, nbg1, hel1)"
    type        = string
    default     = "fsn1"
}

variable "image" {
    description = "Image to use for the server (e.g., ubuntu-22.04)"
    type        = string
    default     = "ubuntu-22.04"
}

variable "ssh_keys" {
    description = "List of SSH key names or IDs to inject"
    type        = list(string)
    default     = []
}