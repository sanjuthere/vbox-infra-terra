resource "virtualbox_vm" "ubuntu_vm" { 
  name      = "Ubuntu_Cloud_VM"
  image     = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"
  cpus      = 2
  memory    = "2048 mib"  # 2 GB RAM

  network_adapter {
    type           = "bridged"
    host_interface = "Intel(R) Dual Band Wireless-AC 8265"
  }
}

output "IPAddr" {
  value = virtualbox_vm.ubuntu_vm.network_adapter[0].ipv4_address
}
