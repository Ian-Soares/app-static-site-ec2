module "network" {
  source = "./modules/network"

  network_cidr_block           = "192.168.0.0/16"
  network_enable_dns_hostnames = true
  subnet_pub_cidr_block        = "192.168.1.0/24"
}

module "compute" {
  source = "./modules/compute"

  vpc_security_group_ids = module.network.sg_public_id
  subnet_pub_id          = module.network.subnet_pub_id
  instance_user_data     = base64encode(data.template_file.user_data.rendered)
}