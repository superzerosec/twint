# docker build . -t twint 
# docker run -it --rm twint twint -h
FROM ubuntu:18.04
COPY . /app
WORKDIR /app
RUN apt-get update && apt-get install python3-pip -y && pip3 install . -r requirements.txt