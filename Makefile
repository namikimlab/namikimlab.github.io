build:
	docker buildx build --platform linux/arm64 -t my-jekyll --load .

up:
	docker compose up --build -d
