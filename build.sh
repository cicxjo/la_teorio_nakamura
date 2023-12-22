#!/bin/sh

set -e
set -u

script="lernuvortoj/script"
filter="lernuvortoj/filter"
dir="files"

mkdir -p "$dir"

build()
{
	echo "[*] leciono $1 ($2)"

	$script fr < "leciono-$2.txt" > "$dir/$1/$2.tsv.txt" 2>&1
	$filter < "$dir/$1/$2.tsv.txt" > "$dir/$1/$2.cards.txt"
}
