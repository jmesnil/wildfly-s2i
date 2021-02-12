build = make/build.sh

script_env = \
	IMAGE_NAME=$(IMAGE_NAME) \
        IMAGE_VERSION=$(IMAGE_VERSION) \
        RUNTIME_IMAGE_NAME=$(RUNTIME_IMAGE_NAME)

.PHONY: build
build:
	$(script_env) $(build)

.PHONY: test
test:
	$(script_env) TEST_MODE=true $(build)

release: build
	docker push $(DOCKER_REGISTRY)/${IMAGE_NAME}:$(PUBLISHED_TAG)
	docker push $(DOCKER_REGISTRY)/${RUNTIME_IMAGE_NAME}:$(PUBLISHED_TAG)
