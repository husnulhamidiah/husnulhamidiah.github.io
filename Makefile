.PHONY: build publish

build:
	hugo --minify --baseURL "https://husnulhamidiah.github.io"

publish:
	cd public && git add . && git commit -m "Build $(shell date '+%Y-%m-%d %H:%M:%S')" && git push
