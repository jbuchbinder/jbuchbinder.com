SITE     := jbuchbinder.com
USERNAME := ourexchange
SERVER   := ourexchange.net

all: build deploy

build:
	./hugo

deploy:
	rsync -rvtupP --delete public/* $(USERNAME)@$(SERVER):$(SITE)/

