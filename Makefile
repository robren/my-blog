
BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/content/posts
OUTPUTDIR=$(BASEDIR)/public
HUGO=hugo

SSH_HOST=robren.net
SSH_PORT=22
SSH_USER=root
#SSH_TARGET_DIR=/data/www
SSH_TARGET_DIR=/var/www/html


help:
	@echo 'Makefile for a Hugo Web site                                           '
	@echo '                                                                          '
	@echo 'Usage:                                                                    '
	@echo '   make clean				remove the generated files'
	@echo '   make publish              generate static site to the public directory '
	@echo '   make serve    			serve site at http://localhost:1313'
	@echo '   make serve-inc-drafts    	serve site including draft content at http://localhost:1313'
	@echo '   make ssh_upload           upload the web site via SSH '
	@echo '                                                                          '

clean:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)

publish:
	$(HUGO) --config="config.yml"

serve:
	$(HUGO)  server 

serve-inc-drafts:
	$(HUGO)  server -D 

ssh_upload: publish
	scp -P $(SSH_PORT) -r $(OUTPUTDIR)/* $(SSH_USER)@$(SSH_HOST):$(SSH_TARGET_DIR)



.PHONY: help clean serve serve-inc-drafts publish ssh_upload 
