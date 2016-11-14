.PHONY: build launch

	# Set dir of Makefile to a variable to use later
	MAKEPATH := $(abspath $(lastword $(MAKEFILE_LIST)))
	PWD := $(dir $(MAKEPATH))

	
	build:
				docker build -t mmatoscom/bitchx:make .

	launch:
				docker run -ti \
				--name bitchx \
				-h bitchx \
				mmatoscom/bitchx:make
