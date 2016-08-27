FROM ausov/docker-ci-node-php:latest

# Install pip
RUN apt-get update && apt-get install -qy python-pip && \
    apt-get clean && apt-get autoclean && apt-get --purge -y autoremove && \
    pip -q install awscli && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
