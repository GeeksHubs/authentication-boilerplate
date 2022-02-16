test:
	docker-compose run --rm test-http

test-watch:
	npx nodemon --ext php,http --watch ./test-end2end/api/http --watch ./api/app --exec "make test"
test-deno:
	docker-compose run --rm test-deno