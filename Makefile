.PHONY: serve build debug prepare

serve:
	npx gitbook serve

build:
	npx gitbook build

debug:
	npx gitbook build ./ --log=debug --debug

prepare:
	npm install @gitbook-ng/gitbook
