#!/usr/bin/env -S bash -e

#
#	Uses COPY to (hopefully) copy $4..$# into TARGET, retaining directory
#	hierarchy if SOURCE is the suffix of the paths in $4..$#.
#




declare -r COPY="${1}"; shift;
if [ ! -x "${COPY}" ]; then
	exit 1;
fi;


declare -r TARGET="$(realpath "${1}")"; shift;
if [ ! -d "${TARGET}" ]; then
	exit 2;
fi;


declare -r SOURCE="$(realpath "${1}")"; shift;
if [ ${#} -lt 1 ]; then
	exit 3;
fi;




SUBDIR=;
for FILE in "${@}"; do
	FILE="$(realpath "${FILE}")";
	SUBDIR="$(dirname "${FILE}")";
	SUBDIR="${SUBDIR#${SOURCE}}";
	"${COPY[@]}" "${FILE}" "${TARGET}${SUBDIR}";
done;
