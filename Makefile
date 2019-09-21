GOOGLE_APIS_DIR="./submodules/googleapis/"
PROJECT_DIR=$(shell pwd)
GENERATED_CODE_DIR="$(PROJECT_DIR)/src/generated"

# https://stackoverflow.com/a/1789616
generate-rpc:
	cd $(GOOGLE_APIS_DIR); \
	protoc \
		--swift_out=$(GENERATED_CODE_DIR) \
		--swiftgrpc_out=$(GENERATED_CODE_DIR) \
		google/pubsub/v1/pubsub.proto; \
	cd $(PROJECT_DIR);
