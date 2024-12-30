FROM debian:12-slim
RUN apt update && apt install -y ser2net && rm -f /etc/ser2net.yaml
COPY entrypoint /usr/local/sbin/entrypoint
ENV CONFFILE=/etc/ser2net.yaml
ENTRYPOINT [ "/usr/local/sbin/entrypoint" ]
