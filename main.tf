#PROVIDER
provider "vsphere" {
  user           = var.vsphere_user
  password       = var.vsphere_pwd
  vsphere_server = var.vsphere_server

  # If you have a self-signed cert
  allow_unverified_ssl = true
}

#Datacenter
data "vsphere_datacenter" "datacenter" {
  name = var.vsphere_datacenter
}

#Datastore
data "vsphere_datastore" "datastore" {
  name          = var.vsphere_datastore
  datacenter_id = data.vsphere_datacenter.datacenter.id
}


# Host
data "vsphere_resource_pool" "pool" {
  name          = "${var.vsphere_esxi_name}/Resources"
  datacenter_id = data.vsphere_datacenter.datacenter.id
}


#Network
data "vsphere_network" "network" {
  name          = var.vsphere_network
  datacenter_id = data.vsphere_datacenter.datacenter.id
}


# Resources
resource "vsphere_virtual_machine" "vm" {
  count            = "4"
  name             = "var.vm_name ${count.index + 1}"
  resource_pool_id = data.vsphere_resource_pool.pool.id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = var.vm_cpu
  memory   = var.vm_memory
  guest_id = var.vm_guest_id
  wait_for_guest_net_timeout = var.vm_wait_timeout
network_interface {
    network_id = data.vsphere_network.network.id
  }

  disk {
    label = var.vm_label
    size  = var.vm_size
  }
}
