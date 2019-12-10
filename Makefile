new:
	hugo new post/`date +%s`.md

publish:
	./scripts/build.sh

dev:
	hugo server -D

start:
	hugo server