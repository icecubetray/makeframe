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
	@echo 'OBJECTS              = $(OBJECTS)'




PHONIES += export-includes
export-includes:
	find \
		'$(PROJECT_SOURCE)' \
			-type f \
			-name '*.h' \
			-print0 \
	| xargs --null \
		'$(DIR_SELF)/bin/export-dist.sh' \
			'$(DIR_SELF)/bin/mdcp.sh' \
			'$(PROJECT_DIST_INCLUDE)' \
			'$(PROJECT_SOURCE)';




PHONIES += clean-objects
clean-objects:
	find \
		'$(PROJECT_SOURCE)' \
			-type f \
			-name '*.o' \
			-delete;
