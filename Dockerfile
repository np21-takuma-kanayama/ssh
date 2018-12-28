FROM alpine
RUN apk add --no-cache openssh
RUN sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config
RUN echo "root:root" | chpasswd
CMD ssh-keygen -A && /usr/sbin/sshd -D -e "$@"
EXPOSE 22