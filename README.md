# React + TypeScript + Vite

To start the container
```sh
docker compose up
```

To start the container in the background
```sh
docker compose up -d
```

To stop the container
```sh
docker compose down --remove-orphans
```

To rebuild the container without cache (useful when you make changes to the Dockerfile or docker-compose.yaml)
```sh
docker compose down --remove-orphans && docker compose build --pull --no-cache
```

