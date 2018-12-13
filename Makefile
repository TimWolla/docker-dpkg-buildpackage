all: image

image:
	docker build -t dpkg-build .

.PHONY: image
