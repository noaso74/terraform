#terraform.tfvars

#Server

vsphere_user = "administrator@vsphere.local"
vsphere_pwd = "vCenter Password"
vsphere_server = "vCenter @IP"

#Infrastructure

vsphere_datacenter = "Datacenter"
vsphere_datastore = "datastore1"
vsphere_esxi_name = "ESXI @IP"
vsphere_network = "ESXI Network"

#VM Configuration

vm_name = "VM2"
vm_cpu = "2"
vm_memory = "1024"
vm_label = "Disk1"
vm_size = "20"
vm_guest_id = "other3xLinux64Guest"
vm_wait_timeout = "0"
