FROM arm32v7/alpine

RUN apk upgrade --update-cache --available && \
        apk add vlc && \
        rm -rf /var/cache/apk/*

RUN adduser -S vlcuser
COPY entrypoint.sh /

EXPOSE 8081
EXPOSE 8082

USER vlcuser
ENTRYPOINT ["/entrypoint.sh"]
CMD ["cvlc"]
