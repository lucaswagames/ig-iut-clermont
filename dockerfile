# Use Alpine Linux as the base image
FROM alpine:latest

# Install Hugo Extended
RUN apk add --no-cache git libc6-compat libstdc++ && \
    wget https://github.com/gohugoio/hugo/releases/download/v0.99.0/hugo_extended_0.99.0_Linux-64bit.tar.gz && \
    tar xzf hugo_extended_0.99.0_Linux-64bit.tar.gz && \
    mv hugo /usr/bin/hugo && \
    rm -rf hugo_extended_0.99.0_Linux-64bit.tar.gz

# Set the working directory to /usr/share/blog
WORKDIR /usr/share/blog

# Copy the current directory contents into the container at /usr/share/blog
COPY . /usr/share/blog
RUN chmod -R 755 /usr/share/blog

# After copying the files, list the contents of the directory to ensure everything is in place
RUN ls -la /usr/share/blog


# Expose port 1313 to the outside worldA
EXPOSE 1313

# Start Hugo server
CMD ["hugo", "server", "-D", "--bind", "0.0.0.0", "--config", "/usr/share/blog/config.toml"]

