ifeq (,$(OBJECTS))
	OBJECTS = $(call GetObjects,$(PROJECT_SOURCE))
endif
