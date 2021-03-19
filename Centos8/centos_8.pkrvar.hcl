//Defined User Variables
vsphere_datacenter      = "smt-lab-dc01"
vsphere_password        = "VMware123!"
vsphere_compute_cluster = "smt-lab-cl-mn-01"
vsphere_portgroup_name  = "smt-lab-vDS_build_20"
vsphere_datastore       = "smt-lab-ds-vsan-01"
template_library_Name   = "cen-8"
vm_name                 = "centos8"
CPUs                    = "1"
RAM                     = "2048"
disk_size               = "25600"
firmware                = "bios"
vm_version              = "17"
notes                   = "Built via Packer"
guest_os_type           = "centos8_64Guest"
ssh_username            = "linux_user"
ssh_password            = "VMware123!"
ssh_timeout             = "30m"
disk_controller_type    = ["pvscsi"]
os_iso_path             = "[smt-lab-ds-vsan-01] /Media/CentOS-8.3.2011-x86_64-dvd1.iso"
vmtools_iso_path        = "[smt-lab-ds-vsan-01] /Media/VMTools/linux.iso"
boot_wait               = "15s"
boot_command            = ["<up><wait><tab><wait> text ks=http://smt-lab-http-01.smt-lab.local:80/boot_files/centos8/ks.cfg<enter><wait>"]
script_files            = ["scripts/install-vmtools.sh","scripts/update.sh"]