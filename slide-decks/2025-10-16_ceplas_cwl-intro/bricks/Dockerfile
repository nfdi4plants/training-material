FROM ubuntu:22.04

LABEL description="Samtools - Tools for alignments in the SAM, BAM, and CRAM formats" \
      version="1.20"

# Install dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        wget \
        build-essential \
        libncurses5-dev \
        libbz2-dev \
        liblzma-dev \
        libcurl4-openssl-dev \
        ca-certificates \
        zlib1g-dev && \
    rm -rf /var/lib/apt/lists/*

# Download and build Samtools from source
WORKDIR /opt
RUN wget https://github.com/samtools/samtools/releases/download/1.20/samtools-1.20.tar.bz2 && \
    tar -xjf samtools-1.20.tar.bz2 && \
    cd samtools-1.20 && \
    ./configure --prefix=/usr/local && \
    make && make install && \
    cd .. && \
    rm -rf samtools-1.20 samtools-1.20.tar.bz2

# Set working directory for user data
WORKDIR /data

# Default command
ENTRYPOINT ["samtools"]
CMD ["--help"]
