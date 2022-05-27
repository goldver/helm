#!/bin/bash

dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
cat $dir

echo "# Installing Helm chart #"

helm install michael-hw simple-app/ --values simple-app/values.yaml --namespace michael
