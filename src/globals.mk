PROJECT_NAME = whatchamacallit
PROJECT_VERSION = $(shell git rev-parse HEAD 2>/dev/null)
# PROJECT_SOURCE =
# PROJECT_DIST =
PROJECT_DIST_INCLUDE = $(PROJECT_DIST)/include

PROFILE = debug

# CC = gcc
# LD = gcc

# CFLAGS = -pipe -march=native -Wall $(CFLAGS_EXTRA)
CFLAGS_DEBUG = -g -DDEBUG=1
CFLAGS_RELEASE = -O2

# Default the number of jobs running parallel to the number of available processors, minus one.
N_PARALLELIZATION = $(shell nproc --ignore=1)




################################################################################




# Append CFLAGS_EXTRA to CFLAGS
CFLAGS += $(CFLAGS_EXTRA)

# Append PROFILE-specific cflags to CFLAGS.
CFLAGS += $(CFLAGS_$(call TransformProfileName,$(PROFILE)))
