#!/bin/bash

set -ex

RG_NAME=zicong-byo-aks-2
az group create -l eastus -n $RG_NAME

az aks create \
  -g $RG_NAME \
  -n $RG_NAME \
  --enable-managed-identity \
  --kubernetes-version 1.24.10 \
  --enable-oidc-issuer \
  --enable-workload-identity \
  --node-count 1 \
  --enable-addons monitoring \
  --enable-msi-auth-for-monitoring  \
  --generate-ssh-keys