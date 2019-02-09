FROM jraqula/ubuntu-git
COPY deploy.sh /
CMD cp /deploy.sh /root/ && cd /root/ && ./deploy.sh
