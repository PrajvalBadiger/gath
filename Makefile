TARGET=gath
build:
	@templ generate
	@go build -o tmp/$TARGET .

run: build
	@./tmp/$TARGET

watch:
	npx tailwindcss -m -i ./css/input.css -o ./css/output.css --watch & \
		templ generate --watch --proxy="http://localhost:8080" --cmd="go run ."

tailwind-watch:
	npx tailwindcss -m -i ./css/input.css -o ./css/output.css --watch

clean:
	rm -rf ./tmp/*
	rm -rf ./templates/*.go ./templates/*.txt
