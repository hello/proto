#!/usr/bin/env sh

HANEDA_DIR=_go/haneda
API_DIR=_go/api

mkdir -p $HANEDA_DIR
mkdir -p $API_DIR

# HANEDA
protoc --go_out=_go/haneda/ async.proto streaming.proto

# API
protoc --go_out=_go/api log.proto periodic.server.proto morpheus_ble.proto sync_response.proto audio_control.proto file_manifest.proto filetransfer.proto state.proto

ROOT="$GOPATH/src/github.com/hello/haneda"
HANEDA="$ROOT/haneda/"
API="$ROOT/api/"

echo $HANEDA
echo $API

cp $HANEDA_DIR/*.pb.go $HANEDA
cp $API_DIR/*.pb.go $API

rm -rf _go/

