# SANDBOX
Simple Container Image with Linux and Some Tools

## WARNING: I do not recommend snap docker distribution
I found issues with mount using a default snap distribution in Ubuntu. 
* Recommend following instructions on https://docs.docker.com/get-docker/ for desktop, ce, or standard distribution.

## Standard Build
Performing the standard build is as follows:

1. docker build -t stuartwfraser/sandbox:ubuntu_16.04 --file Dockerfile .

## Example Usage
Following is an example use:

1. [Suggestion] Create a local folder for performing your work
    * mkdir -p /opt/projects/projecta
2. docker run -d -it -p 9001:9001 --name projecta --hostname projecta **--mount type=bind,source=/opt/projects/projecta,target=/opt/projecta** stuartwfraser/sandbox:ubuntu_16.04
3. Open http://<your_computer>:9001
4. Press 'Start' for the os-release (process)
5. Press the 'os-relase' name to see the output of the operating system release version
6. docker exec -it projecta bash
    * Perform some work. (It is suggested you use the mounted file system **/opt/projecta**.)

## Custom Supervisor Configuration
1. docker run -d -it -p 9001:9001 --name projecta --hostname projecta --mount type=bind,source=/opt/projects/projecta,target=/opt/projecta **-e SUPERVISORCONF=/opt/projecta/mysupervisord.conf** stuartwfraser/sandbox:ubuntu_16.04

## Custom Image Builds
Performing custom builds is as follows:

1. Download the project
2. Edit Dockerfile as desired
    * **Example:** FROM ubuntu:22.04
3. docker build -t myimages/ubuntu:22.04 --file Dockerfile .

