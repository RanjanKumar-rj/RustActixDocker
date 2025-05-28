# Use the official Rust image
FROM rust:latest

# Create a new directory inside the container 
WORKDIR /usr/src/app

# Copy the Cargo.toml and Cargo.lock first to cache dependencies
COPY Cargo.toml Cargo.lock ./

# Create an empty main.rs so `cargo build` works before copying full src
# RUN mkdir src && echo "fn main() {}" > src/main.rs

# Build dependencies to cache them
# RUN cargo build --release && rm -rf src

# Now copy actual source code
COPY . .

# Build actual project
RUN cargo build --release

# Set the startup command
CMD ["./target/release/rust_docker"]