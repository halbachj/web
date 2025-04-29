FROM debian:bullseye-slim

# Install Pandoc and dependencies
RUN apt-get update && \
    apt-get install -y pandoc wget ca-certificates && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Optional: add any other build tools (like make, git, etc.)

# Set the working directory
WORKDIR /site

