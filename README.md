# terraform_poc

# AMI Creation

Prior to provisioning infrastructure you first need to prepare AMIs for Consul, Vault and Nomad. In each case you will leverage code available from the official modules from the [Terraform Module Registry](https://registry.terraform.io/). In all cases, the modules leverage [Packer](https://www.packer.io/) to create [Amazon Machine Images (AMIs)](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AMIs.html) that have each product plus Dnsmasq installed on top of Ubuntu 16.04; specifically:

* Consul:  [install-consul](https://github.com/hashicorp/terraform-aws-consul/tree/master/modules/install-consul) and [install-dnsmasq](https://github.com/hashicorp/terraform-aws-consul/tree/master/modules/install-dnsmasq).
* Nomad:  [install-nomad](https://github.com/hashicorp/terraform-aws-nomad/tree/master/modules/install-nomad) and [install-dnsmasq](https://github.com/hashicorp/terraform-aws-consul/tree/master/modules/install-dnsmasq).
* Vault:  [install-vault](https://github.com/hashicorp/terraform-aws-vault/tree/master/modules/install-vault) and [install-dnsmasq](https://github.com/hashicorp/terraform-aws-consul/tree/master/modules/install-dnsmasq).

These AMIs will have [Consul](https://www.consul.io/) installed and configured to automatically join a cluster during boot-up. They also have [Dnsmasq](http://www.thekelleys.org.uk/dnsmasq/doc.html) installed and configured to use Consul for DNS lookups of the `.consul` domain (e.g. `foo.service.consul`).

## Build Images

To build the AMIs:

1. `git clone` this repo to your computer.
1. Install [Packer](https://www.packer.io/).
1. Configure your AWS credentials using one of the [options supported by the AWS SDK](http://docs.aws.amazon.com/sdk-for-java/v1/developer-guide/credentials.html). Usually, the easiest option is to set the `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` environment variables.
1. Update the `./packer/variables.json` configure the AWS region, Consul, Nomad and Vault versions and Consult, Nomad and Vault module versions (from `https://registry.terraform.io`).
1. Run `./packer/build-amis.sh`
1. When each build finishes, it will output the IDs of the new AMIs, update `consul_ami`, `vault_consul_ami` and `nomad_consul_ami` in `./variables.tf` appropriately.

# Configure Consul

## Terraform Configuration

TODO

## Verify Provisioning

`./helpers/consul-helper.sh`

# Configure Nomad

## Terraform Configuration

TODO

## Verify Provisioning

`./helpers/nomad-helper.sh`

# Configure Vault

TODO

## Terraform Configuration

TODO

## Post Provisioning

TODO

## Verify Provisioning

`./helpers/vault-helper.sh`
