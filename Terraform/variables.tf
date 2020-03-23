variable "project_id" {
  type = string
  default = "teak-gamma-272017"
}

variable "region" {
  type = string
  default = "us-east1"
}


#Creating a VM in cloud
variable "name" {
  type = string
  default = "vm-webserver"
}

variable "machine_type" {
  type = string
  default = "f1-micro"
}

variable "zone" {
  type = string
  default = "us-east1-b"
}

variable "image" {
  type = string
  default = "debian-cloud/debian-9"
}

# Allow firewall
variable "name_firewall" {
  type = string 
  default = "webserver-firewall"
}

variable "firewall_port" {
  type = list
  default = ["80"]
}


