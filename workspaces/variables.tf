variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID of joindevops RHEL 9"
}


variable "project" {
  default = "roboshop"
}

variable "sg_name" {
    default="allow-all"  
}

variable "description" {
    default="allow all traffic"  
}

variable "from_port" {
    type=number
    default=0 
}

variable "to_port" {
    type=number
    default=0   
}

variable "cidr_blocks" {
      type=list(string)
      default = [ "0.0.0.0/0" ]
}

variable "instances" {
    default = ["mongodb","redis"]
  
}

variable "instance_type" {
    default = {
        dev = "t3.micro"
        prod = "t3.small"
    }
  
}

variable "common_tags" {
    default = {
        project="roboshop"
        terraform="true"
    }
  
}