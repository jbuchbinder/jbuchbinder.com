SITE     := jbuchbinder.com
USERNAME := ourexchange
SERVER   := richard-bassett.ourexchange.net

all: build deploy

build:
	hugo

deploy:
	rsync -rvtupP --delete public/* $(USERNAME)@$(SERVER):$(SITE)/

