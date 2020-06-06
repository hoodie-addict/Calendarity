FROM ubuntu:latest
MAINTAINER Slugin Roman 'sluginroma@yandex.ru'
RUN apt-get update -y
RUN apt-get install -y python3-pip
COPY . /app
WORKDIR /app 
RUN pip3 install -r requirements.txt
ENTRYPOINT [ "python3" ]
CMD [ "run.py" ]
