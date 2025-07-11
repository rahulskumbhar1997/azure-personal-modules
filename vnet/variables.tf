
variable "resource_group_name" {
  default = "cloudrockers_default"
  type = string
}

variable "vnet_name" {
  default = "cloudrockers_default"
  type = string
}

variable "vnet_address_space" {
  default = "172.16.80.0/24"
  type = string
}

variable "subnet_address_name_mapping" {
  default = {
    "subnet-1": "172.16.80.0/26",
    "subnet-2": "172.16.80.64/26",
  }
  type = map(string)
}

variable "location" {
  default = "Central India"
  type = string
}