#terraform.tfvars

#Server

vsphere_user = "administrator@vsphere.local"
vsphere_pwd = "3KWTVLjV4>uf2"
vsphere_server = "172.180.0.200"

#Infrastructure

vsphere_datacenter = "Datacenter"
vsphere_datastore = "datastore1"
vsphere_esxi_name = "172.180.0.128"
vsphere_network = "ESGI-PG"

#VM Configuration

vm_name = "VM2"
vm_cpu = "2"
vm_memory = "1024"
vm_label = "Disk1"
vm_size = "20"
vm_guest_id = "other3xLinux64Guest"
vm_wait_timeout = "0"