# vector-docker

This is a very simple container that takes the content of the `VECTOR_CONFIG_CONTENT` variable and writes it to `/etc/vector/vector.toml`. This allows you to specify the vector config as an environment variable in your deployment.

See `docker-compose.yml` for example.
