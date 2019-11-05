# If PROJECT_VERSION is emtpy, override it to WILD.
ifeq (,$(PROJECT_VERSION))
PROJECT_VERSION = WILD
endif

# If PROJECT_VERSION is set to HEAD, override it to DETACHED.
ifeq (HEAD,$(PROJECT_VERSION))
PROJECT_VERSION = DETACHED
endif


# If CC is not set, default to GCC.
ifeq (,$(CC))
CC = gcc
endif

# If LD is not set, default to GCC.
ifeq (,$(LD))
LD = gcc
endif

# If CFLAGS is not set, default to something relatively sane.
ifeq (,$(CFLAGS))
CFLAGS = -pipe -march=native -Wall
endif
