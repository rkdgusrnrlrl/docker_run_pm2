FROM keymetrics/pm2:latest

RUN mkdir /data
COPY . /data/
# delete files
RUN rm -rf /data/Dockerfile /data/.git /data/docker_run_shell.sh

WORKDIR /data

CMD ["pm2-docker", "start", "pm2.json"]
