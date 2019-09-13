FROM python:3-alpine

ENV ARTIFACTORY_URL=http://localhost:8081/artifactory \
    ARTIFACTORY_USER=user \
    ARTIFACTORY_PASSWORD=password

COPY entrypoint.sh /

RUN pip3 install artifactory-du && \
    apk add curl coreutils && \
    chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
