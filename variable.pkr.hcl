variable "vm-name" {
  type    = string
  default = "Ubuntu-1804-Template"
}

variable "vcenter-server" {
  type      = string
  default   = "ztxtvtesxihm01"
  sensitive = true
}

variable "vcenter-username" {
  type      = string
  default   = "user vmware"
  sensitive = true
}

variable "vcenter-password" {
  type      = string
  default   = "password vmware"
  sensitive = true
}

variable "datacenter" {
  type    = string
  default = "VMWARE ZATIX HOMOLOGA"
}

variable "datastore" {
  type    = string
  default = "ESXIHM01_FS1_DT06"
}

variable "folder" {
  type    = string
  default = "Templates"
}

variable "network" {
  type    = string
  default = "VLAN2"
}

variable "vm-cpu-num" {
  default = "1"
}

variable "vm-mem-size" {
  default = "2048"
}

variable "disk-size" {
  default = "10240"
}

variable "ssh-username" {
  default   = "root"
  sensitive = true
}

variable "ssh-password" {
  default   = "?ZtxROOT!@#1"
  sensitive = true
}

variable "remote_type" {
  default = "esx5"
}

variable "ssh-timeout" {
  default = "20m"
}

variable "iso-url" {
  type    = string
  default = "[ESXIHM01_FS1_DT06] ISOs/ubuntu-18.04.5-live-server-amd64.iso"
}

variable "iso-checksum" {
  type    = string
  default = "sha256:3756b3201007a88da35ee0957fbe6666c495fb3d8ef2e851ed2bd1115dc36446"
}