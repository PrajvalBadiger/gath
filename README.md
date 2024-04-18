# GATH - Go, Alpine.js, Tailwindcss, HTMX

Template for Go htmx fullstack.

## Prerequisites

- [Go](https://go.dev/doc/install)
- [TailwindCSS](https://tailwindcss.com/docs/installation) - install tailwindcss cli globally `bun install -g tailwindcss@latest` (can be installed using npm also).

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

Once all the dependencies are resolved, you can run the app. Supports live reloading.
``` bash
make watch
```

# TODO
- [ ] Add air for live reloading
- [ ] Add a database - mariaDB
- [ ] Add support for environment variables

