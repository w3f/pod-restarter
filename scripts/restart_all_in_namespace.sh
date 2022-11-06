#!/bin/bash
NAMESPACE=${1-default}
# usage: restart_all_in_namespace.sh namespace

kubectl -n ${NAMESPACE} rollout restart statefulset && kubectl -n ${NAMESPACE} rollout restart deploy
