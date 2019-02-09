FROM jraqula/ubuntu-git
COPY deploy.sh /
RUN chmod a+x /deploy.sh
CMD mv /deploy.sh /root/ && cd /root/ && ./deploy.sh
