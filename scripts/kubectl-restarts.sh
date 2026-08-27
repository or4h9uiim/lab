#!/usr/bin/env bash
set -euo pipefail

# List pods with restart counts across all namespaces.
# Usage: kubectl-restarts.sh [namespace]

ns="${1:-}"
if [[ -n "$ns" ]]; then
  kubectl get pods -n "$ns" --sort-by='.status.containerStatuses[*].restartCount' -o custom-columns='NAMESPACE:.metadata.namespace,POD:.metadata.name,RESTARTS:.status.containerStatuses[*].restartCount'
else
  kubectl get pods --all-namespaces --sort-by='.status.containerStatuses[*].restartCount' -o custom-columns='NAMESPACE:.metadata.namespace,POD:.metadata.name,RESTARTS:.status.containerStatuses[*].restartCount'
fi
