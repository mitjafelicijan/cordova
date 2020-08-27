REPO="mitjafelicijan/cordova"
TAG="latest"

info:
	@echo "refer to file for targets"

build:
	docker build --tag $(REPO):$(TAG) .

run:
	docker run -it --privileged -v /dev/bus/usb:/dev/bus/usb -v $PWD:/tmp $(REPO) bash

publish:
	docker tag $(REPO):$(TAG) $(REPO):$(TAG)
	docker push $(REPO):$(TAG)
