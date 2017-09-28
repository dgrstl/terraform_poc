variable "ami_id" {
  default = "ami-0791657d"
}

# Packer generated AMI for Consul Server
variable "consul_ami" {
  type = "map"

  default = {
    us-east-1 = "ami-9653a3ec"
  }
}

# Packer generated AMI for Vault and Consul client
variable "vault_consul_ami" {
  type = "map"

  default = {
    us-east-1 = "ami-eb847791"
  }
}

# Packer generated AMI for Nomad and Consul client
variable "nomad_consul_ami" {
  type = "map"

  default = {
    us-east-1 = "ami-8d54a4f7"
  }
}

variable "aws_region" {
  default = "us-east-1"
}

variable "nomad_cluster_name" {
  description = "What to name the Nomad cluster and all of its associated resources"
  default     = "nomad"
}

variable "consul_cluster_name" {
  description = "What to name the Consul cluster and all of its associated resources"
  default     = "consul"
}

variable "num_nomad_servers" {
  description = "The number of Nomad server nodes to deploy. We strongly recommend using 3 or 5."
  default     = 3
}

variable "num_nomad_clients" {
  description = "The number of Nomad client nodes to deploy. You can deploy as many as you need to run your jobs."
  default     = 6
}

variable "num_consul_servers" {
  description = "The number of Consul server nodes to deploy. We strongly recommend using 3 or 5."
  default     = 3
}

variable "consul_cluster_tag_key" {
  description = "The tag the Consul EC2 Instances will look for to automatically discover each other and form a cluster."
  default     = "consul-cluster"
}

variable "ssh_public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCsjEEIUyd2may6+UwqwiYZ2jAM+FoM57Gm1ZnE11wifPcz+uA7tFy4xodthZ/yqZKILJWW0Td444UkI2mOruYoCvrfti1KCo5I/yZnAOtY8Fxd4dnNKTQLHSKa/dRpswB9bk7pYaXdQH6T8OyhI4KmxRiBdyMz6sc0m/yCxHIIgS3cqmA+73HgEgMcvxHS+Z8poElTnTuZO7B8VVxOz2ua7dd3hNLmxS3Ox1WNg1PSVdjT37p8uA5RIEb6E1mzPcLDXoTsEaXjHSVAETNx4AYMe7P8Q+9i0u47EGvpIz8EfN8os9yZ7f55r0bXZMgK6x+pMSMHxLcZIC5kQOc+Pqx1 dave@dave-mbp.local"
}

variable "ssh_key_name" {
  default = "dgrstl"
}

variable "s3_bucket_name" {
  description = "The name of an S3 bucket to create and use as a storage backend. Note: S3 bucket names must be *globally* unique."
  default     = "dgrstl_hashi_poc"
}

variable "vault_cluster_name" {
  description = "What to name the Vault server cluster and all of its associated resources"
  default     = "vault-example"
}

variable "vault_cluster_size" {
  description = "The number of Vault server nodes to deploy. We strongly recommend using 3 or 5."
  default     = 3
}

variable "vault_instance_type" {
  description = "The type of EC2 Instance to run in the Vault ASG"
  default     = "t2.micro"
}

variable "force_destroy_s3_bucket" {
  description = "If you set this to true, when you run terraform destroy, this tells Terraform to delete all the objects in the S3 bucket used for backend storage. You should NOT set this to true in production or you risk losing all your data! This property is only here so automated tests of this module can clean up after themselves."
  default     = false
}
