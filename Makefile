GOOGLE_APIS_DIR="./submodules/googleapis/"
PROJECT_DIR=$(shell pwd)

# https://stackoverflow.com/a/1789616
generate-protobuf:
	cd $(GOOGLE_APIS_DIR); \
	protoc --swift_out="$(PROJECT_DIR)/src/generated" google/pubsub/v1/pubsub.proto; \
	cd $(PROJECT_DIR);
