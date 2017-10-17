#!/usr/bin/env bash

set -e

info () {
    printf " [ \033[00;34m..\033[0m ] $1\n"
}
success () {
    printf "\r\033[2K [ \033[00;32mOK\033[0m ] $1\n"
}
fail () {
    printf "\r\033[2K [\033[0;31mFAIL\033[0m] $1 \n"
    echo ''
    exit
}

set -u

info "List all the tenants on ACI"

APIC_LOGIN=${APIC_LOGIN} \
APIC_PASSWORD=${APIC_PASSWORD} \
APIC_URL=${APIC_URL} \
pipeline-git/tasks/aci-show-tenants.py

info "Create Tenant"
APIC_LOGIN=${APIC_LOGIN} \
APIC_PASSWORD=${APIC_PASSWORD} \
APIC_URL=${APIC_URL} \
pipeline-git/tasks/aci-craete-tenant.py robTest

 info "Create Bridge Domain"