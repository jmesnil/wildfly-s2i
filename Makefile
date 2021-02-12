DOCKER_REGISTRY ?= quay.io
IMAGE_VERSION ?= dev
PUBLISHED_TAG ?= 22.0
NAMESPACE ?= wildfly
PLATFORM ?= centos7
IMAGE_NAME=${NAMESPACE}/wildfly-${PLATFORM}
RUNTIME_IMAGE_NAME=${NAMESPACE}/wildfly-runtime-${PLATFORM}
# Include common Makefile code.
include make/common.mk
