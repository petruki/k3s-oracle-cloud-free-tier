module "free-tier-k3s" {
  source = "./modules/free-tier-k3s"

  # General
  project_name   = "ftk3s"
  region         = var.region
  compartment_id = var.compartment_id
  ssh_public_key = file(var.ssh_public_key_path)

  # Network
  whitelist_subnets = [
    "10.0.0.0/8"
  ]

  vcn_subnet     = "10.0.0.0/16"
  private_subnet = "10.0.2.0/23"
  public_subnet  = "10.0.0.0/23"

  freetier_server_ad_list = 1
  freetier_worker_ad_list = [1]
}
