
FROM ubuntu

RUN apt-get update && apt-get install -y gnupg2

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/mongodb.list

#RUN apt-get install -y mongodb-10gen

RUN mkdir -p /data/db

EXPOSE 27017

CMD ["--port 27017"]

ENTRYPOINT usr/bin/mongod


#>> /etc/apt/sources.list
