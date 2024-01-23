
# Connecting to Broad's vault server
export VAULT_ADDR=https://clotho.broadinstitute.org:8200

vault-auth() {
    vault login -method=github token=$(cat ~/.github-token)
}
