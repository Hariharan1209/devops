variable "vpc_cidr" {
  type    = string
  default = "10.10.0.0/16"
}

variable "az" {
  type    = string
  default = "ap-south-1"

}

variable "cidr_subnet" {
  type = list(string)
  default = ["10.10.1.0/24",
    "10.10.2.0/24",
    "10.10.3.0/24",
  "10.10.4.0/24"]

}

variable "az_zones" {
  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b", "ap-south-1a", "ap-south-1b"]

}

variable "subnet_tags" {
  type    = list(string)
  default = ["web1", "web2", "app1", "app2"]

}