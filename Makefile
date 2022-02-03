INSTALL_DIR := ~/bin
MAKEFILE_DIR := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

install:
	$(MAKE) $(INSTALL_DIR)/cflog2json
	$(MAKE) $(INSTALL_DIR)/docker-exec
	$(MAKE) $(INSTALL_DIR)/ecs-container-health

$(INSTALL_DIR)/%:
	cd $(INSTALL_DIR) && ln -s $(MAKEFILE_DIR)/$*
