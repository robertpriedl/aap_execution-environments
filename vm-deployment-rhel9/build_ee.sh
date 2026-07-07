ansible-builder build -t quay.io/robert_priedl/ee-vm-deploy-rhel9:latest --verbosity 3
podman login quay.io --username robert_priedl+builder --password "$QUAY_PASSWORD"
podman push quay.io/robert_priedl/ee-vm-deploy-rhel9:latest
#podman login -u='robert_priedl+builder' -p='NGIPDHPCLXY9BBXEG79H1L5ARAOV9VEXBAE6ZB7UGZUZPKZ55Z3FNOYT2KU9S7VI' quay.io
# under AAP go to Execution Environments and create a new one
# use the quay.io/robert_priedl/ee-vm-deploy-rhel9:latest
# set the name to ee-vm-deploy-rhel9
# set the Upstream name to robert_priedl/ee-vm-deploy-rhel9
