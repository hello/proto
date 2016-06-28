#!/usr/bin/env sh

protoc --go_out=. async.proto streaming.proto
protoc --go_out=. log.proto periodic.server.proto morpheus_ble.proto sync_response.proto audio_control.proto

ROOT=/Users/tim/codebin/go/src/github.com/hello/haneda
HANEDA="$ROOT/haneda/"
API="$ROOT/api/"

echo $HANEDA
echo $API

cp async.pb.go $HANEDA
cp streaming.pb.go $HANEDA

cp log.pb.go $API
cp periodic.server.pb.go $API
cp morpheus_ble.pb.go $API
cp sync_response.pb.go $API
cp audio_control.pb.go $API
