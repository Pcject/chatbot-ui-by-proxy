# chatbot-ui-by-proxy
[English Version](README.md)

本仓库包含一个 Dockerfile，可以构建一个基于 `ghcr.io/mckaywrigley/chatbot-ui:main` 的镜像，并支持使用环境变量 `PROXYCHAINS_PROXY` 指定代理。

基于 [mckaywrigley/chatbot-ui](https://github.com/mckaywrigley/chatbot-ui) 项目构建.

请查看该仓库获取详细的文档和支持.

## 代理格式
`PROXYCHAINS_PROXY` 环境变量应该遵循以下格式：
```
<proxy_type>  <host>   <port>    [user]   [password]
```

示例：
```
socks5 192.168.67.78 1080 user secret
http 192.168.89.3 8080 justu hidden
socks4 192.168.1.49 1080
http 192.168.39.93 8080
```

## 构建镜像
在该仓库的根目录下执行以下命令即可构建镜像：
```
docker build -t pcject/chatbot-ui:main .
```

## 运行容器
要运行容器，请使用以下命令：
```
docker run -e OPENAI_API_KEY=xxxxxxxx -e PROXYCHAINS_PROXY='<proxy_config>' -p 3000:3000 pcject/chatbot-ui:main
```

请将 `<proxy_config>` 替换为实际要使用的代理配置。比如：
```
docker run -e OPENAI_API_KEY=xxxxxxxx -e PROXYCHAINS_PROXY='socks5 192.168.67.78 1080 user secret' -p 3000:3000 pcject/chatbot-ui:main
```

## 访问镜像
构建好的镜像可以通过以下命令访问：
```
docker pull pcject/chatbot-ui:main
```