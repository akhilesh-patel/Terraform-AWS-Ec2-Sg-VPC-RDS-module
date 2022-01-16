
variable "ami_id"{
      default = "ami-001089eb624938d9f"
}
variable "instance_type"{
       default = "t2.micro"
}

variable "security_group_ports" {
      type=list
      default = [80,81,8080,8081,21]
}