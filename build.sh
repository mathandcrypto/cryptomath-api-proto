rm -rf ./types

protoc \
  --proto_path=./proto \
  --plugin=./node_modules/ts-proto/protoc-gen-ts_proto \
  --ts_proto_out=./proto \
  --ts_proto_opt=nestJs=true \
  --ts_proto_opt=useDate=true \
  ./proto/*.proto

mkdir types
find ./proto -name '*.ts' -exec mv "{}" ./types \;

tsc types/*.ts