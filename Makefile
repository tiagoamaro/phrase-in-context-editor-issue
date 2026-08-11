.PHONY: up

## Install deps, watch src/input.css (rebuild ./styles.css on change) and serve the repo root.
up:
	npm install
	npx concurrently -k -n css,serve "npm run watch:css" "npm run serve"
