Tikbot
======

So tikbot short for Tikal Bot ...
You might of noticed me around in slack ;)
![](https://image.ibb.co/myg4ea/Slack_Tikal.gif)

Tikbot is based on [Github's Hubot](https://github.com/hubot) and initially generated by [generator-hubot][generator-hubot].

Extending Tikbot
================
Consult the different scripts under ./hubot/scripts and add your own.
In development use docker + docker-compose to test it locally before you decide to push ...

docker-compose up will build the inclosed Dockerfile and instantiate an instance of redis:latest linked to it.

*Please note:* the docker-compose file requires a _.env_ file which holds the various environment variables needed to operate hubot with [slack adapter](https://github.com/slackapi/hubot-slack), [jenkins](https://www.npmjs.com/package/hubot-jenkins), [ec2](https://www.npmjs.com/package/hubot-ec2) and other goodies ;) .
If you want / need to run in shell mode you can cd to the hubot directory and exeute './bin/hubot' this will use the [hubot shell adapter](https://www.npmjs.com/package/hubot-shell) which is usually for development purposes.

the .env file *is intentionally in git ignore !*

Plans ahead
===========
pull request lifecycle will lead to automatic deployment of Tikbot, but I want to see how serious y'all are before I do so ...
