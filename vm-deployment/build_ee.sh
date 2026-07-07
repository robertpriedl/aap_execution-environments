ansible-builder build -t quay.io/robert_priedl/ee-vm-deploy2:latest --verbosity 3
#podman login quay.io --username robert_priedl --password Gz2jbYtvVxOaQV
podman login -u='robert_priedl+robot' -p='5P7PTNE8POTSES7O1MHL5DP1F6X1TPSNIES3SI879KQRVY41D99R49BHZ6EU86R4' quay.io
podman push quay.io/robert_priedl/ee-vm-deploy2:latest

# under AAP go to Execution Environments and create a new one
# use the quay.io/robert_priedl/ee-vm-deploy:latest
# set the name to ee-vm-deploy
# set the Upstream name to robert_priedl/ee-vm-deploy