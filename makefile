test:
	docker-compose run --rm test-end2end

test-watch:
	npx nodemon --watch ./test-end2end/api/http --watch ./api/app --exec "make test"
test-deno:
	docker-compose run --rm test-deno