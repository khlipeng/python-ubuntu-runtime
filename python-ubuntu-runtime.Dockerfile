ARG OPENCV_VERSION
ARG CUDA_VERSION
ARG FFMPEG_VERSION

FROM docker.io/library/debian:bookworm-slim

LABEL maintainer="khlipeng"

RUN apt-get update && apt-get install -y --no-install-recommends \
            ca-certificates python3.11 python3-numpy python3-opencv python3-xmltodict  && \
            rm -rf /var/lib/apt/lists/*