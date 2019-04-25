ARG BASE_IMAGE=senzing/senzing-base
FROM ${BASE_IMAGE}

ENV REFRESHED_AT=2019-04-12

LABEL Name="senzing/senzing-debug" \
      Version="1.0.0"

# Install packages via apt.

RUN apt-get update \
 && apt-get -y install \
    build-essential \
    curl \
    fio \
    htop \
    iotop \
    ipython \
    itop \
    jq \
    net-tools \
    pstack \
    python-dev \
    python-pip \
    python-setuptools \
    tree \
    vim \
 && rm -rf /var/lib/apt/lists/*

# Install packages via pip.

RUN pip install \
    setuptools \
    csvkit

# Copy files from repository.

COPY ./rootfs /

# Runtime execution.

WORKDIR /app
ENTRYPOINT ["/app/docker-entrypoint.sh"]
CMD ["/app/sleep-infinitely.sh"]