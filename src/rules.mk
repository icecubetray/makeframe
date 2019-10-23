PHONIES += dump-state
dump-state:
	@echo 'MAKE                 = $(MAKE)'
	@echo 'MAKEFLAGS            =$(MAKEFLAGS)'
	@echo 'DIR_SELF             = $(DIR_SELF)'
	@echo
	@echo 'PROJECT_NAME         = $(PROJECT_NAME)'
	@echo 'PROJECT_VERSION      = $(PROJECT_VERSION)'
	@echo 'PROJECT_SOURCE       = $(PROJECT_SOURCE)'
	@echo 'PROJECT_DIST         = $(PROJECT_DIST)'
	@echo 'PROJECT_DIST_INCLUDE = $(PROJECT_DIST_INCLUDE)'
	@echo
	@echo 'PROFILE              = $(PROFILE)'
	@echo
	@echo 'CC                   = $(CC)'
	@echo 'LD                   = $(LD)'
	@echo 'CFLAGS               = $(CFLAGS)'
	@echo
	@echo 'OBJECTS              = $(call GetObjects $(PROJECT_SOURCE))'
