variable "token" {
  type      = string
  sensitive = true
}

variable "cloud_id" {
  type = string
}

variable "folder_id" {
  type = string
}

variable "default_zone" {
  type    = string
  default = "ru-central1-a"
}

variable "vpc_name" {
  type    = string
  default = "develop"
}

variable "default_cidr" {
  type    = list(string)
  default = ["10.0.1.0/24"]
}

variable "image_family" {
  type    = string
  default = "ubuntu-2004-lts"
}

variable "public_key_path" {
  type    = string
  default = "~/.ssh/id_rsa.pub"
}

variable "each_vm" {
  type = list(object({
    vm_name     = string
    cpu         = number
    ram         = number
    disk_volume = number
  }))
  default = [
    { vm_name = "main", cpu = 2, ram = 4, disk_volume = 20 },
    { vm_name = "replica", cpu = 4, ram = 8, disk_volume = 30 }
  ]
}
