#!/bin/sh

patches=(`ls patches/* | grep '.diff$'`)
for patch in ${patches[@]}; do
	echo "Applying \"${patch}\""
	patch -Np1 --merge --forward -i ${patch}
done
