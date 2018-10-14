FROM redelivre/alpine-node:latest
ARG port
ARG redis_port
ARG redis_host
USER $username
EXPOSE 3000
WORKDIR /home/$username/redis-commander
RUN npm install redis-commander
CMD node ./node_modules/redis-commander/bin/redis-commander.js --redis-port 6379 --redis-host dev.org.br --redis-db 0 --address 0.0.0.0 --port 3000