#!/bin/bash
packer build -var-file=varables.json consul.json
packer build -var-file=varables.json nomad-consul.json
packer build -var-file=varables.json vault-consul.json
