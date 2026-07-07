ansible-builder build -t quay.io/robert_priedl/ee-vm-deploy-rhel10:latest --verbosity 3
podman login quay.io --username robert_priedl --password "$QUAY_PASSWORD"
podman push quay.io/robert_priedl/ee-vm-deploy-rhel10:latest

# under AAP go to Execution Environments and create a new one
# use the quay.io/robert_priedl/ee-vm-deploy-rhel10:latest
# set the name to ee-vm-deploy-rhel10
# set the Upstream name to robert_priedl/ee-vm-deploy-rhel10
