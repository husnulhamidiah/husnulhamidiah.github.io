install:
	git submodule update --init --recursive

new:
	hugo new post/`date +%s`.md

publish:
	./scripts/build.sh