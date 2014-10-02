#!/usr/bin/env sh

# Clean
rm -rf build

# Need to create output directories b/c protoc can't
mkdir -p build/iOS
mkdir -p build/python

for file in $(find com/truckmuncher/api -name '*.proto');
do
	
	# Android
	java -jar wire-compiler-1.5.3-SNAPSHOT-for-android.jar --java_out=build/android --service_writer=com.squareup.wire.OurRetrofitServiceWriter $file

	# API
	java -jar wire-compiler-1.5.3-SNAPSHOT-for-api.jar --java_out=build/api --service_writer=com.squareup.wire.JerseyServiceWriter $file;

	# iOS
	protoc -I=. $file --swift_out="build/iOS"

	# Api tests
	protoc -I=. $file --python_out="build/python"
done