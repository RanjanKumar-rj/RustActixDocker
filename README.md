# Rust Docker

This is a basic [Actix Web](https://actix.rs/) server running inside a Docker container.

## Usage

docker build -t rust-hello .

docker run -p 8080:8080 rust-hello      # Port Mapping