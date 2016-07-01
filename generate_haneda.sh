#!/usr/bin/env sh

HANEDA_DIR=_go/haneda
API_DIR=_go/api
MESSEJI_DIR=_go/messeji

mkdir -p $HANEDA_DIR
mkdir -p $API_DIR
mkdir -p $MESSEJI_DIR

# HANEDA
protoc --go_out=_go/haneda/ async.proto streaming.proto

# API
protoc --go_out=_go/api log.proto periodic.server.proto morpheus_ble.proto sync_response.proto audio_control.proto file_manifest.proto filetransfer.proto state.proto

protoc --go_out=_go/messeji --proto_path=messeji messeji/*.proto

ROOT="$GOPATH/src/github.com/hello/haneda"
HANEDA="$ROOT/haneda/"
API="$ROOT/api/"
MESSEJI="$ROOT/messeji"

echo $HANEDA
echo $API
echo $MESSEJI

cp $HANEDA_DIR/*.pb.go $HANEDA
cp $API_DIR/*.pb.go $API
cp $MESSEJI_DIR/*.pb.go $MESSEJI

rm -rf _go/

