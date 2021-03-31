#!/bin/bash
set -euo pipefail
cd ${0%/*}

kubectl create -f bookinfo-productpage-pipelinerun.yml -n tekton-pipelines

sleep 1
tkn pipelinerun logs -f -n tekton-pipelines