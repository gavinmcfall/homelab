#!/bin/sh
eval $(op signin)
cd "$(dirname "$0")/../k3s_cluster/control"
op inject -i auto.tfvars -o vars.tf
terraform plan -out=plan.out