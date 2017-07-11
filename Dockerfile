FROM node:4

# Install base packages
RUN \
#    curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
#    apt-get install -y build-essential node-gyp nodejs && \
    npm install -g npm && \
    npm install -g hubot hubot-slack coffee-script redis yo generator-hubot

ADD ./hubot /opt/hubot

# Create new hubot and setup for slack. And install hubot-simple-logger
RUN cd /opt/hubot && rm -f hubot-scripts.json; npm install 

ENV EXPRESS_PORT=9090
# Set environment variables
ENV HUBOT_LOGS_PORT 8086
ENV HUBOT_LOGS_FOLDER /data/logs
# hubot slack dapter token
ENV HUBOT_SLACK_TOKEN empty
# jenkins-hubot
ENV HUBOT_JENKINS_URL empty 
ENV HUBOT_JENKINS_AUTH empty
# hubot-ec2
ENV HUBOT_AWS_ACCESS_KEY_ID empty
ENV HUBOT_AWS_SECRET_ACCESS_KEY empty
ENV HUBOT_AWS_REGION empty

EXPOSE 9090

# Set default command
WORKDIR /opt/hubot
ENTRYPOINT ["/opt/hubot/bin/hubot"]`
CMD ["--adapter", "slack"]
