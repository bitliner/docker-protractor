#!/bin/bash

build() {
	sudo docker build -t bitliner/protractor .
}
push() {
	sudo docker push bitliner/protractor
}

usage() {
	echo "Actions:"
	echo "		build	build the image"
	echo "		push	push the image"
}

case $1 in
	build)
		build;;
	push)
		push;;
	*)
		usage;;
esac
