variable "rgname" {
  type        = string
  default     = "grsv"
  description = "resource gropu for public ip static"
}
variable "locate" {
  type    = string
  default = "west us"
}
variable "ipname" {}
variable "sku" {}
variable "assignment" {}
variable "ipv4version" {}
variable "tag" {
  type    = map(any)
  default = { "env" : "production" }

}