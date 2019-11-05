#!/usr/bin/env -S bash -e

#
#	Simple cp wrapper to ensure TARGET is an existing directory that can be copied to, before copying.
#




declare TARGET;
for TARGET in "${@}"; do :; done;
declare -r TARGET;


if [ ! -d "${TARGET}" ]; then
	mkdir -p "${TARGET}";
fi;


declare -ri ARGN=${#};
cp "${@:1:$((ARGN-1))}" "${TARGET}";
