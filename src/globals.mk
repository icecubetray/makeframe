PROJECT_NAME = whatchamacallit
PROJECT_VERSION = $(shell git rev-parse HEAD 2>/dev/null)
# PROJECT_SOURCE
# PROJECT_DIST

PROFILE = debug

CC = gcc
LD = gcc

CFLAGS = -pipe -march=native -Wall $(CFLAGS_EXTRA)
CFLAGS_DEBUG = -g -DDEBUG=1
CFLAGS_RELEASE = -O2

# Default the number of jobs running parallel to the number of available processors, minus one.
N_PARALLELIZATION = $(shell nproc --ignore=1)




################################################################################




# If PROJECT_DIST_INCLUDE is not set, set a default.
ifeq (,$(PROJECT_DIST_INCLUDE))
	PROJECT_DIST_INCLUDE = $(PROJECT_DIST)/include
endif




################################################################################




# If PROJECT_VERSION is emtpy, override it to WILD.
ifeq (,$(PROJECT_VERSION))
	override PROJECT_VERSION = WILD
endif

ifeq (HEAD,$(PROJECT_VERSION))
	override PROJECT_VERSION = DETACHED
endif

# Append PROFILE-specific cflags to CFLAGS.
CFLAGS += $(CFLAGS_$(call TransformProfileName,$(PROFILE)))
