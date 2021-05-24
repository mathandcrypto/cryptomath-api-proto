rm -rf ./types

protoc \
  --plugin=./node_modules/ts-proto/protoc-gen-ts_proto \
  --ts_proto_out=./proto \
  --ts_proto_opt=nestJs=true \
  --ts_proto_opt=useDate=true \
  ./proto/*.proto

mv ./proto/proto ./types

tsc types/*.ts