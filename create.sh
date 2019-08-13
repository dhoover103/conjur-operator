#!/bin/bash

repoName=conjur-operator-test
operatorName=conjur-operator

oc delete clusterRoleBinding $operatorName
oc delete clusterRole $operatorName
oc delete serviceAccount $operatorName
oc delete deployment $operatorName
oc delete deployment example-conjur
oc delete deployment example-conjur-postgres
operator-sdk build quay.io/dhoover103/$repoName:v0.0.1
docker push quay.io/dhoover103/$repoName:v0.0.1

oc create -f deploy/service_account.yaml
oc create -f deploy/role.yaml
oc create -f deploy/role_binding.yaml
oc create -f deploy/operator.yaml

