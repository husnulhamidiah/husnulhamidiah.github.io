.PHONY: build new-post

build:
	hugo --minify --baseURL "https://husnulhamidiah.github.io"

new-post:
	@title="$(filter-out $@,$(MAKECMDGOALS))"; \
	slug=$$(echo "$$title" | tr ' ' '_' | tr '[:upper:]' '[:lower:]'); \
	hugo new "posts/$$(date +%s)_$$slug.md"

%:
	@:
