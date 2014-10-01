#!/usr/bin/env sh

# Clean
rm -rf build

# Android
java -jar wire-compiler-1.5.3-SNAPSHOT-jar-with-dependencies.jar --proto_path=com --java_out=build/android --service_writer=com.squareup.wire.OurRetrofitServiceWriter truckmuncher/api/v1/healthcheck.proto

# API
java -jar wire-compiler-1.5.3-SNAPSHOT-jar-with-dependencies.jar --proto_path=com --java_out=build/api --service_writer=com.squareup.wire.JerseyServiceWriter truckmuncher/api/v1/healthcheck.proto
protoc -I=. --java_out=build/api com/truckmuncher/api/v1/healthcheck.proto