# chatbot-ui-by-proxy
[中文版](README_CN.md)

Built upon the [mckaywrigley/chatbot-ui](https://github.com/mckaywrigley/chatbot-ui) project.

Please refer to that repository for detailed documentation and support.


Docker Image with Chatbot UI and Proxy Configuration
This repository contains a Dockerfile for building an image based on `ghcr.io/mckaywrigley/chatbot-ui:main` with support for using a proxy specified by the `PROXYCHAINS_PROXY` environment variable.

## Proxy Format
The `PROXYCHAINS_PROXY` environment variable should follow the format:
```
<proxy_type>  <host>   <port>    [user]   [password]
```

Example:
```
socks5 192.168.67.78 1080 user secret
http 192.168.89.3 8080 justu hidden
socks4 192.168.1.49 1080
http 192.168.39.93 8080
```

## Building the Image
To build the image, run the following command in the root directory of this repository:

```
docker build -t pcject/chatbot-ui:main .
```

## Running the Container
To run the container, use the following command:

```
docker run -e OPENAI_API_KEY=xxxxxxxx -e PROXYCHAINS_PROXY='<proxy_config>' -p 3000:3000 pcject/chatbot-ui:main
```

Make sure to replace `<proxy_config>` with the actual proxy configuration you want to use.
```
docker run -e OPENAI_API_KEY=xxxxxxxx -e PROXYCHAINS_PROXY='socks5 192.168.67.78 1080 user secret' -p 3000:3000 pcject/chatbot-ui:main
```

## Accessing the Image
Once the image has been built, it can be accessed using the following command:

```
docker pull pcject/chatbot-ui:main
```