#!/bin/bash

# HMAC generated from payload + GH secret

curl -i \
  -H 'X-GitHub-Event: push' \
  -H 'X-Hub-Signature: sha1=MySecret123' \
  -H 'Content-Type: application/json' \
  -d '{"ref":"refs/heads/main","head_commit":{"id":"beb3666e183d8898bc101dcdf2063ee2a4c22f39"}}' \
  http://devready.cp4multicloud-ibm.com/bookinfo-ratings-github-listener-interceptor