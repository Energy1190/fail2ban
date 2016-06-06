FROM debian:jessie

RUN apt-get update && \
    apt-get install -y $buildDeps \
    	fail2ban \
 && rm -rf /var/lib/apt/lists/*
 
 ENTRYPOINT /usr/bin/fail2ban-client