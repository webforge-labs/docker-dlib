tag := "19.24-bookworm"

build:
    docker build -t webforgelabs/dlib:{{ tag }} .

push:
    docker login
    docker push webforgelabs/dlib:{{tag}}