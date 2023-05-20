# SANDBOX
Simple Container Image with Linux and Some Tools

## If using Docker, I do not recommend snap docker distribution
I found issues with mount using a default snap distribution in Ubuntu. 
* Recommend following instructions on https://docs.docker.com/get-docker/ for desktop, ce, and standard distributions.

## Example Usage
Following is an example use:

1. docker run

## Custom Builds
Performing custom builds is as follows:

1. Download the project
2. Edit Dockerfile as desired
    * Example: FROM ubuntu:22.04
3. docker build -t myimages/ubuntu:22.04 --file Dockerfile .

docker build -t myimages/ubuntu:22.04 --file Dockerfile .

mkdir -p /opt/projects/projecta

https://docs.docker.com/engine/install/ubuntu/

docker build -t sandbox/ubuntu:16.04 --file Dockerfile .
