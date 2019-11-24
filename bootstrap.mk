DIR_SELF := $(shell dirname "$(realpath $(lastword $(MAKEFILE_LIST)))" | sed 's/ /\\ /g')

# Sanity checking.
include \
	$(DIR_SELF)/src/sanity.mk

# Function declarations.
include \
	$(DIR_SELF)/src/functions.mk

# Variable setting.
include \
	$(DIR_SELF)/src/defaults.mk \
	$(DIR_SELF)/src/globals.mk

# Target implementation.
include \
	$(DIR_SELF)/src/targets.mk \
	$(DIR_SELF)/src/phonies.mk

# Finalization.
include \
	$(DIR_SELF)/src/finalization.mk
