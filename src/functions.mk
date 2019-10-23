# Transforms input to a string usable in the variable expansion for profile selection.
TransformProfileName = $(shell echo "$1" | sed 's/[[:space:]\-]/_/g' | tr [:lower:] [:upper:] | sed 's/[^A-Za-z0-9_]//g')

# Gets object files from the given directory.
GetObjects = $(patsubst %.c,%.o,$(shell find $2 -type f -name '*.c'))
