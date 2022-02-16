test:
	docker-compose run --rm test-end2end

test-watch:
	npx nodemon --watch ./test-end2end/api/http --watch ./api/app --exec "make test"
test-manual:
	npx httpyac send **/*.http --all --output-failed exchange --output none