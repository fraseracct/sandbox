# sandbox
Simple Container Image with Linux and Some Tools

## If using Docker, I do not recommend snap docker distribution
Recommend following instructions on https://docs.docker.com/get-docker/ for desktop, ce, and standard distributions. I found issues with mount using a default snap distribution in Ubuntu.

mkdir -p /opt/projects/projecta



docker build -t sandbox/ubuntu:16.04 --file Dockerfile .
