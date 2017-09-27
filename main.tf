provider "aws" {
  region = "${var.aws_region}"
}

data "aws_vpc" "default" {
  default = true
}

resource "aws_key_pair" "default" {
  key_name   = "${var.ssh_key_name}"
  public_key = "${var.ssh_public_key}"
}

data "aws_subnet_ids" "default" {
  vpc_id = "${data.aws_vpc.default.id}"
}
