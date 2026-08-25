module "yattee" {
  source              = "../../modules/proxmox-lxc"

  node_name           = "pve1"
  template_id         = 2000
  vm_id               = 2001
  name                = "yattee.homelab.local"
  description         = "Yattee Server — self-hosted yt-dlp backend"
  tags                = ["plane-infra", "service-media", "tier-utility"]

  cpu_cores           = 4
  memory              = 4096
  swap                = 1024 
  disk_size           = 50

  unprivileged        = true

  ipv4_address        = var.service_ips.yattee
  gateway             = var.gateway
  nameservers         = var.nameservers
}
