start:
	docker-compose up

test:
	docker-compose run --rm test-http

test-watch:
	npx nodemon --ext php,http --watch ./tests/api/http --watch ./api/app --exec "make test"

test-deno:
	docker-compose run --rm test-deno