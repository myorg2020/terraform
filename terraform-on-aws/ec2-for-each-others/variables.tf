variable "ami" {
  type = string
  validation {
    condition     = substr(var.ami, 0, 4) == "ami-"
    error_message = "AMI should start with \"ami-\""
  }
}

variable "instance_type" {

}

variable "webservers" {
  type    = set(any)
  default = ["web1", "web2", "web3"]
}