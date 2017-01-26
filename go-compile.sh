#!/bin/bash

rm *.pb.go
protoc -I=. --go_out=plugins=grpc:. ./rr.proto
protoc -I=. --go_out=plugins=grpc:. ./meta.proto
protoc -I=. --go_out=plugins=grpc:. ./command.proto
protoc -I=. --go_out=plugins=grpc:. ./flightlog.proto
protoc -I=. --go_out=plugins=grpc:. ./packet.proto
protoc -I=. --go_out=plugins=grpc:. ./pair.proto
protoc -I=. --go_out=plugins=grpc:. ./network.proto
