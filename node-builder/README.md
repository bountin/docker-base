# Node Builder Base Image

Base image to build Mantigma's webpack (et al.) projects.

## Usage

For a simple application that follows the standard pattern the following Dockerfile is sufficient:

```
FROM mantigma/base-node-builder:7
```

The expected structure is a ```package.json``` specifying the dependencies and a working ```npm run build```
configuration to build the application. The resulting assets are expected at ./build and will be exported by rocker
for delivery to other images (e.g. nginx-static).

The base image's ONBUILD will handle the heavy lifting.

## Building

For the build process [rocker](https://github.com/grammarly/rocker) is required.

```
# A single node version
rocker build -var NodeVersion=0.12

# All supported versions
./generate.sh
```
