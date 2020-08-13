info:
	@echo "refer to file for targets"

build:
	docker build --tag cordova:latest .

run:
	docker run -it --privileged -v /dev/bus/usb:/dev/bus/usb -v $PWD:/tmp cordova bash