source "vmware-iso" "ubuntu-18.04" {
  boot_command        = ["<enter><wait><f6><esc><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "<bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs><bs>", "/install/vmlinuz noapic ", "preseed/file=/floppy/ubuntu.cfg ", "debian-installer=en_US auto locale=en_US kbd-chooser/method=us ", "hostname={{ .Name }} ", "fb=false debconf/frontend=noninteractive ", "keyboard-configuration/modelcode=SKIP keyboard-configuration/layout=USA ", "keyboard-configuration/variant=USA console-setup/ask_detect=false ", "grub-installer/bootdev=/dev/sda ", "initrd=/install/initrd.gz -- <enter>"]
  disk_type_id        = "thin"
  floppy_files        = ["ubuntu.cfg"]
  guest_os_type       = "ubuntu-64"
  headless            = false
  iso_checksum        = "${var.iso_checksum}"
  iso_url             = "${var.iso_url}"
  keep_registered     = true
  ovftool_options     = "--noSSLVerify"
  remote_host         = "${var.esxi_host}"
  remote_password     = "${var.esxi_password}"
  remote_type         = "${var.remote_type}"
  remote_username     = "${var.esxi_username}"
  shutdown_command    = "echo 'shutdown -P now' > shutdown.sh; echo 'nullgrid'|sudo -S sh 'shutdown.sh'"
  skip_export         = true
  ssh_password        = "${var.ssh-password}"
  ssh_timeout         = "${var.ssh-timeout}"
  ssh_username        = "${var.ssh-username}"
  tools_upload_flavor = "linux"
  vm_name             = "${var.vm-name}"
  vmx_data = {
    "ethernet0.networkName" = "VLAN2"
  }
}

build {
  sources = ["source.vmware-iso.ubuntu-18.04"]
}
