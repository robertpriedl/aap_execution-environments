#!/usr/bin/env bash
set -euo pipefail
trap 'echo "Error: build_ee.sh failed at line $LINENO (exit code $?)" >&2' ERR

export CONTAINERS_STORAGE_CONF="$(cd "$(dirname "$0")" && pwd)/build-storage.conf"

IMAGE="quay.io/robert_priedl/ee-vm-deploy:latest"

if [ -z "${QUAY_PASSWORD:-}" ]; then
    echo "Error: QUAY_PASSWORD environment variable is not set" >&2
    exit 1
fi

echo "==> Building ${IMAGE}"
ansible-builder build -t "${IMAGE}" --verbosity 3

echo "==> Logging in to quay.io"
podman login quay.io --username robert_priedl+builder --password "$QUAY_PASSWORD"

echo "==> Pushing ${IMAGE}"
podman push "${IMAGE}"

echo "==> Done: ${IMAGE} built and pushed successfully"

# under AAP go to Execution Environments and create a new one
# use the quay.io/robert_priedl/ee-vm-deploy:latest
# set the name to ee-vm-deploy
# set the Upstream name to robert_priedl/ee-vm-deploy
