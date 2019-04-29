#!/usr/bin/env bash

set -o errexit
set -o nounset

export KUBE_NAMESPACE=developer-induction
export KUBE_SERVER=${KUBE_SERVER_ACP_NOTPROD}
export KUBE_TOKEN=${KUBE_TOKEN_ACP_NOTPROD}

cd kube
kd --insecure-skip-tls-verify \
   --file kube.yaml