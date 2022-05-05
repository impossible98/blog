
build:
	hugo --gc --minify

dev:
	hugo server --buildDrafts

fmt:
	yarn run fmt
