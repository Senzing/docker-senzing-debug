ARG BASE_IMAGE=senzing/senzing-base:1.4.0
FROM ${BASE_IMAGE}

ENV REFRESHED_AT=2020-01-29

LABEL Name="senzing/senzing-debug" \
      Maintainer="support@senzing.com" \
      Version="1.3.0"

HEALTHCHECK CMD ["/app/healthcheck.sh"]

# Run as "root" for system installation.

USER root

# Install packages via apt.

RUN apt-get update \
 && apt-get -y install \
    elfutils \
    fio \
    htop \
    iotop \
    ipython \
    itop \
    net-tools \
    procps \
    pstack \
    python-setuptools \
    strace \
    tree \
    vim \
 && rm -rf /var/lib/apt/lists/*

# Install packages via pip.

RUN pip3 install \
    setuptools \
    csvkit

# Copy files from repository.

COPY ./rootfs /

# Runtime execution.

WORKDIR /app
CMD ["/app/sleep-infinity.sh"]
