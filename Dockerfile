FROM ubuntu

# Install cron
RUN apt-get update && apt-get upgrade -y && apt-get install -y cron nodejs npm

# Add files
ADD run.sh /run.sh
ADD entrypoint.sh /entrypoint.sh
ADD run.js /run.js
 
RUN chmod +x /run.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
