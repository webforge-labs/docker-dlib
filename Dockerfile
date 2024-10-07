FROM python:3.12-slim-bookworm

RUN apt-get -y update && apt-get install -y --fix-missing \
    build-essential \
    cmake \
    gfortran \
    git \
    curl \
    graphicsmagick \
    libgraphicsmagick1-dev \
    libatlas-base-dev \
    libavcodec-dev \
    libavformat-dev \
    libgtk2.0-dev \
    libjpeg-dev \
    liblapack-dev \
    libswscale-dev \
    pkg-config \
    software-properties-common \
    zip \
    && apt-get clean && rm -rf /tmp/* /var/tmp/*

RUN pip install dlib==19.24.6

#RUN cd ~ \
#    && mkdir -p dlib \
#    && git clone -b "v19.9" --single-branch https://github.com/davisking/dlib.git dlib/ \
#    && cd  dlib/ \
#    && python -m venv venv \
#    && pip install build \
#    && python -m build --wheel \
#    \
    #&& python3 setup.py install --yes USE_AVX_INSTRUCTIONS
