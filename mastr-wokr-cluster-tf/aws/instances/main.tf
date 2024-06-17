provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source = "../modules/ec2"

  instance_name  = "k8s-node"
  ami_id         = "ami-05e00961530ae1b55"
  instance_type  = "t2.medium"
  key_name       = "ocreate-dev"
  subnet_ids     = ["subnet-04fe1bf2db3a9a8ba", "subnet-0f376de104542f776", "subnet-04832f1fe4a95848a"]
  instance_count = 2

  inbound_from_port  = ["0", "6443", "22", "30000"]
  inbound_to_port    = ["65000", "6443", "22", "32768"]
  inbound_protocol   = ["TCP", "TCP", "TCP", "TCP"]
  inbound_cidr       = ["172.31.0.0/16", "0.0.0.0/0", "0.0.0.0/0", "0.0.0.0/0"]
  outbound_from_port = ["0"]
  outbound_to_port   = ["0"]
  outbound_protocol  = ["-1"]
  outbound_cidr      = ["0.0.0.0/0"]
}
