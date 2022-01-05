variable "region" {}

variable "compartment_id" {
  description = "Compartment Identifier"
  type        = string
  sensitive   = true
}

variable "ssh_public_key_path" {
  description = "Path/Filename to the SSH Public Key"
  type        = string
}
