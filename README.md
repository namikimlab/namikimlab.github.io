# nami_portfolio

Personal portfolio site built with Jekyll.

## Tech Stack

- Jekyll 4 (Ruby)
- Markdown content pages
- Docker / Docker Compose for local development

## Run Locally

### Option 1: Docker (recommended)

Prerequisites:
- Docker Desktop (or Docker Engine + Compose)

Commands:

```bash
make build
make up
```

Open:
- http://localhost:4000

Notes:
- Live reload is enabled.
- The site runs from the `site` service in `docker-compose.yml`.

### Option 2: Ruby + Bundler (without Docker)

Prerequisites:
- Ruby (compatible with the gems in `Gemfile`)
- Bundler

Commands:

```bash
bundle install
bundle exec jekyll serve --livereload
```

Open:
- http://localhost:4000

## Build Output

- Generated site is written to `_site/`.

## Key Files

- `_config.yml`: Jekyll site configuration
- `about.md`, `index.md`, `projects.md`, `contact.md`: Main pages
- `_projects/`: Project detail pages
- `_layouts/`: HTML layouts
- `docker-compose.yml`: Containerized dev setup
- `Makefile`: Convenience commands (`build`, `up`)
