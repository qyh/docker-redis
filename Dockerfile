FROM ubuntu:latest
USER root
ADD redis/redis.conf /etc/redis.conf
ADD redis/redis-server /usr/local/bin/redis-server
ADD startRedis.sh /root/startRedis.sh
#RUN apt-get update && apt-get install -y apt-utils 
EXPOSE 6379 
CMD ["/root/startRedis.sh"]


