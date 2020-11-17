#variables.tf

variable "vsphere_user" {
    description = "account used for authentification"
    default = "root"
}
variable "vsphere_pwd" {}
variable "vsphere_server" {}
variable "vsphere_datacenter" {}
variable "vsphere_esxi_name" {}
variable "vsphere_network" {}
variable "vm_name" {}
variable "vm_cpu" {
  default = "1"
}
variable "vm_memory" {
  default = "512"
}

variable "vm_label" {
  default = "Disk2"
}
variable "vm_size" {
  default = "40"
}

variable "vm_guest_id" {
  
}
variable "vsphere_datastore" {}
variable "vm_wait_timeout" {
  
}





