ansible-builder build -t quay.io/robert_priedl/ee-vm-deploy:latest --verbosity 3
podman login quay.io --username robert_priedl --password Gz2jbYtvVxOaQV
podman push quay.io/robert_priedl/ee-vm-deploy:latest

# under AAP go to Execution Environments and create a new one
# use the quay.io/robert_priedl/ee-vm-deploy:latest
# set the name to ee-vm-deploy
# set the Upstream name to robert_priedl/ee-vm-deploy