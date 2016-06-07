FROM debian:jessie

RUN apt-get update && \
    apt-get install -y $buildDeps \
    	fail2ban \
 && rm -rf /var/lib/apt/lists/*
 
RUN mv /etc/fail2ban/jail.conf /etc/fail2ban/jail.conf.default
 
ADD entrypoint.sh /entrypoint.sh
ADD /etc/fail2ban/jail.conf /jail.conf 
 
ENTRYPOINT ["/entrypoint.sh"]