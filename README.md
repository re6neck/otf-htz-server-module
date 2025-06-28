# Hetzner Server Module Variables

This module defines the following input variables for provisioning a Hetzner Cloud server:

| Variable Name    | Type          | Description                                         | Default         | Sensitive |
|------------------|---------------|-----------------------------------------------------|-----------------|-----------|
| `hcloud_token`   | `string`      | Hetzner Cloud API token                             | _None_          | Yes       |
| `server_name`    | `string`      | Name of the Hetzner server                          | _None_          | No        |
| `server_type`    | `string`      | Type of the Hetzner server (e.g., cx11, cx21)       | `"cx11"`        | No        |
| `server_location`| `string`      | Location for the server (e.g., fsn1, nbg1, hel1)    | `"fsn1"`        | No        |
| `image`          | `string`      | Image to use for the server (e.g., ubuntu-22.04)    | `"ubuntu-22.04"`| No        |
| `ssh_keys`       | `list(string)`| List of SSH key names or IDs to inject              | `[]`            | No        |

## Example Usage

```hcl
module "hetzner_server" {
  source          = "./otf-htz-server-module"
  hcloud_token    = var.hcloud_token
  server_name     = "my-server"
  server_type     = "cax11"
  server_location = "nbg11"
  image           = "debian-12"
  ssh_keys        = ["my-ssh-key"]
}
```