variable "ami_id" {
  default = "ami-0791657d"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "nomad_cluster_name" {
  description = "What to name the Nomad cluster and all of its associated resources"
  default     = "nomad-example"
}

variable "consul_cluster_name" {
  description = "What to name the Consul cluster and all of its associated resources"
  default     = "consul-example"
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

variable "cluster_tag_key" {
  description = "The tag the Consul EC2 Instances will look for to automatically discover each other and form a cluster."
  default     = "consul-servers"
}

variable "ssh_public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCsjEEIUyd2may6+UwqwiYZ2jAM+FoM57Gm1ZnE11wifPcz+uA7tFy4xodthZ/yqZKILJWW0Td444UkI2mOruYoCvrfti1KCo5I/yZnAOtY8Fxd4dnNKTQLHSKa/dRpswB9bk7pYaXdQH6T8OyhI4KmxRiBdyMz6sc0m/yCxHIIgS3cqmA+73HgEgMcvxHS+Z8poElTnTuZO7B8VVxOz2ua7dd3hNLmxS3Ox1WNg1PSVdjT37p8uA5RIEb6E1mzPcLDXoTsEaXjHSVAETNx4AYMe7P8Q+9i0u47EGvpIz8EfN8os9yZ7f55r0bXZMgK6x+pMSMHxLcZIC5kQOc+Pqx1 dave@dave-mbp.local"
}

variable "ssh_key_name" {
  default = "dgrstl"
}
