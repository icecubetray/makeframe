# Check if the source path is set.
ifeq (,$(PROJECT_SOURCE))
$(error PROJECT_SOURCE is not set. Please do so before bootstrapping)
endif

# Check if the dist path is set.
ifeq (,$(PROJECT_DIST))
$(error PROJECT_DIST is not set. Please do so before bootstrapping)
endif
