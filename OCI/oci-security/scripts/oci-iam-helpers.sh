#!/usr/bin/env bash
# oci-iam-helpers.sh
# Quick helper commands for OCI IAM Identity Domains via the OCI CLI
# Requires: OCI CLI configured with `oci setup config`

set -euo pipefail

COMPARTMENT_ID="${OCI_COMPARTMENT_ID:-}"

usage() {
  echo "Usage: $0 <command>"
  echo ""
  echo "Commands:"
  echo "  list-domains        List all identity domains in the compartment"
  echo "  list-users          List all users in the tenancy"
  echo "  list-groups         List all groups in the tenancy"
  echo "  create-group NAME   Create a new IAM group"
  echo "  check-cli           Verify OCI CLI is configured correctly"
  echo ""
  echo "Environment:"
  echo "  OCI_COMPARTMENT_ID  Required for most commands"
}

check_cli() {
  echo "Checking OCI CLI configuration..."
  oci iam region list --output table
  echo "OCI CLI is configured correctly."
}

list_domains() {
  if [[ -z "$COMPARTMENT_ID" ]]; then
    echo "Error: OCI_COMPARTMENT_ID is not set."
    exit 1
  fi
  echo "Listing identity domains in compartment: $COMPARTMENT_ID"
  oci iam domain list --compartment-id "$COMPARTMENT_ID" --output table
}

list_users() {
  if [[ -z "$COMPARTMENT_ID" ]]; then
    echo "Error: OCI_COMPARTMENT_ID is not set."
    exit 1
  fi
  echo "Listing users..."
  oci iam user list --compartment-id "$COMPARTMENT_ID" --output table
}

list_groups() {
  if [[ -z "$COMPARTMENT_ID" ]]; then
    echo "Error: OCI_COMPARTMENT_ID is not set."
    exit 1
  fi
  echo "Listing groups..."
  oci iam group list --compartment-id "$COMPARTMENT_ID" --output table
}

create_group() {
  local group_name="${1:-}"
  if [[ -z "$group_name" ]]; then
    echo "Error: Group name is required."
    echo "Usage: $0 create-group <group-name>"
    exit 1
  fi
  echo "Creating group: $group_name"
  oci iam group create \
    --compartment-id "$COMPARTMENT_ID" \
    --name "$group_name" \
    --description "Created by oci-iam-helpers.sh"
  echo "Group '$group_name' created."
}

# Dispatch
case "${1:-}" in
  list-domains)   list_domains ;;
  list-users)     list_users ;;
  list-groups)    list_groups ;;
  create-group)   create_group "${2:-}" ;;
  check-cli)      check_cli ;;
  *)              usage; exit 0 ;;
esac
