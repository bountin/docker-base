# Static Nginx Base Image

Base image for serving static files using nginx.

## Usage

```
FROM mantigma/base-nginx-static
```

The image expects a rocker export from another builder image at ```build```. These files will be delivered by an 
nginx webserver on port 80.

## Customizing

At the moment there are no suggested customizations. Nevertheless, a child image can easily change its nginx 
configuration.

## Building

For the build process [rocker](https://github.com/grammarly/rocker) is required.

```
./generate.sh
```
