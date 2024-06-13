
# genearte protobuf files for dart
# OUTPUT_DIRECTORY = /src/generated
# PROTO_DIRECTORY = lib/src/protos

protoc -I=lib/src/protos lib/src/protos/*.proto --dart_out=grpc:lib/src/generated google/protobuf/timestamp.proto
# # PROTO_DIRECTORY: directory where the proto files are located

# pwd
# protoc --dart_out=grpc:$OUTPUT_DIRECTORY -I=$PROTO_DIRECTORY PROTO_FILE