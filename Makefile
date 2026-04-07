.PHONY: build publish

build:
	hugo --minify --baseURL "https://husnulhamidiah.github.io"

publish:
	cd public && git config user.email "husnulhamidiah@gmail.com" && git checkout master && git add . && git commit -m "Build $(shell date '+%Y-%m-%d %H:%M:%S')" ; git push --force origin HEAD:master
