#!/usr/bin/env bash
if [ $# -eq 0 ] || [ $# -ge 2 ]; then
	echo "Usage: ${0} <input file>"
else
	echo "---Both master and slave use mmap---"
	for count in {1..10}
	do
		./master ${1} mmap
	done

	echo "---Both master and slave use fcntl---"
	for count in {1..10}
	do
		./master ${1} fcntl
	done
fi