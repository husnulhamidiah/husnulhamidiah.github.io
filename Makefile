.PHONY: build

build:
	hugo --minify --baseURL "https://husnulhamidiah.github.io"
	cd public && git add . && git commit -m "Build $(shell date '+%Y-%m-%d %H:%M:%S')" && git push
