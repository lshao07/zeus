#!/bin/bash
# generated by ZEUS v0.9.7
# Timestamp: [Thu Feb 18 17:21:55 2021]

binaryName="zeus"
buildDir="bin"
version="0.9.7"



#!/bin/bash

function bash_greet() {
	echo "hello world from bash!"
	echo "ZEUS version: $version"
}

echo "[ZEUS v${version}] copying LICENSE and README.md"

cp -f LICENSE wiki/docs
cp -f README.md wiki/docs

# @todo: release the tools...
#echo "[ZEUS v${version}] minifying javscript and css"
#jsobfus -d frontend/src/js/:frontend/dist/js
#sasscompile -d frontend/src/sass:frontend/dist/css

echo "[ZEUS v${version}] building ${buildDir}/${binaryName} for current OS $(uname -s)"
rice embed-go
go build -o ${buildDir}/${binaryName}
