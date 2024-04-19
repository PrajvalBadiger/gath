TARGET=gath

build:
	@npx tailwindcss -i ./css/input.css -o ./css/output.css
	@templ generate
	@go build -o tmp/$TARGET .

run: build 
	./tmp/$TARGET

watch: 
	templ generate --watch --proxy="http://localhost:8080" --cmd="go run ."

tailwind-watch:
	npx tailwindcss -i ./css/input.css -o ./css/output.css --watch 

bw-sync:
	air -c .air.toml & \
		browser-sync start \
		--files './**/*.go, views/**/*.templ, css/**/*.css' \
		--port 8081 \
		--proxy 'localhost:8080' \

clean:
	rm -rf ./tmp/*
	rm -rf ./templates/*.go ./templates/*.txt
