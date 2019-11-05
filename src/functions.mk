# Transforms input to a string usable in the variable expansion for profile selection.
TransformProfileName = $(shell echo "$1" | sed 's/[[:space:]\-]/_/g' | tr [:lower:] [:upper:] | sed 's/[^A-Za-z0-9_]//g')

# Gets files in path matching pattern
GetFiles = $(shell find $1 -type f -name '$2')

# Gets object files from the given directory.
GetObjects = $(patsubst %.c,%.o,$(call GetFiles,$1,*.c))
