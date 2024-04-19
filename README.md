# GATH - Go, Alpine.js, Tailwindcss, HTMX

Template for Go htmx fullstack.

## Prerequisites

- [Go](https://go.dev/doc/install)
- [TailwindCSS](https://tailwindcss.com/docs/installation) - install tailwindcss cli globally `bun install -g tailwindcss@latest` (can be installed using npm also).
- [Air](https://github.com/cosmtrek/air) - `curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s`
- [browser-sync](https://browsersync.io/#install) - `bun install -g browser-sync`

## Installation

Run the following command to clone the repo and resolve dependencies. <br>
Replace `<project-name>` with your project name.

``` bash
export PROJECT_NAME="<project-name>"
git clone https://github.com/PrajvalBadiger/gath $PROJECT_NAME
cd ./$PROJECT_NAME
go mod tidy
```

Install tailwind inside the project:
``` bash
bun install
```

Note: At this point of time you can change the go module name and also delete the .git/ directory to initialize a new repository.

## Run

Once all the dependencies are resolved, you can run the app.
``` bash
make run
```

## Live reloading
Using Air for live reloading on file changes and browser-sync for auto refreshing the browser.

Run the below commands in seperate terminal windows
1. TailwindCSS         : `make tailwind-watch`
2. Air and browser-sync: `make bw-sync`


# TODO
- [X] Add air for live reloading
- [ ] Add a database - mariaDB
- [ ] Add support for environment variables

