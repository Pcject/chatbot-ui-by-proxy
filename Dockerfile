FROM ghcr.io/mckaywrigley/chatbot-ui:main

RUN apk update && apk add proxychains-ng
COPY start_by_proxy.sh /app
# Expose the port the app will run on
EXPOSE 3000

# Start the application
CMD ["/app/start_by_proxy.sh"]
