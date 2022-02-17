start:
	docker-compose up

test:
	docker-compose run --rm test-http

test-watch:
	# npx nodemon --ext php,http --watch ./tests/api/http --watch ./api/app --exec "make test"
	npx nodemon --ext php,http --watch ./tests/api/http --watch ./api/app --exec "npx httpyac send **/*.http --all -o none"

test-deno:
	docker-compose run --rm test-deno