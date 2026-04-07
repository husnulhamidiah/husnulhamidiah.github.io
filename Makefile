.PHONY: build publish new-post

build:
	hugo --minify --baseURL "https://husnulhamidiah.github.io"

publish:
	cd public && git config user.email "husnulhamidiah@gmail.com" && git checkout master && git add . && git commit -m "Build $(shell date '+%Y-%m-%d %H:%M:%S')" ; git push --force origin HEAD:master

new-post:
	@title="$(filter-out $@,$(MAKECMDGOALS))"; \
	slug=$$(echo "$$title" | tr ' ' '_' | tr '[:upper:]' '[:lower:]'); \
	hugo new "posts/$$(date +%s)_$$slug.md"

%:
	@:
