# Using a base image with Python already installed
FROM python:3.9-slim

# Install system dependencies
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    aapt gcc python3-dev git git-lfs openjdk-8-jdk apktool dialog && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /usr/src/nikgapps

# Install NikGapps from PyPI
RUN pip install NikGapps

# Copy the script.sh into the container
COPY script.sh /usr/src/nikgapps

# Ensure script.sh is executable
RUN chmod +x /usr/src/nikgapps/script.sh

# Set script.sh as the entrypoint
ENTRYPOINT ["bash", "/usr/src/nikgapps/script.sh"]
