# Check if the source path is set.
ifeq (,$(PROJECT_SOURCE))
$(error PROJECT_SOURCE is not set. Please do so before bootstrapping)
endif

# Check if the dist path is set.
ifeq (,$(PROJECT_DIST))
$(error PROJECT_DIST is not set. Please do so before bootstrapping)
endif


# If PROJECT_VERSION is emtpy, override it to WILD.
ifeq (,$(PROJECT_VERSION))
	override PROJECT_VERSION = WILD
endif

# If PROJECT_VERSION is set to HEAD, override it to DETACHED.
ifeq (HEAD,$(PROJECT_VERSION))
	override PROJECT_VERSION = DETACHED
endif
