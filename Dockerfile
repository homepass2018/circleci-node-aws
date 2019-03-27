FROM circleci/node:10.15.3

RUN sudo apt-get update && sudo apt-get install -y \
  python-pip \
  python-dev

RUN sudo pip install awscli --upgrade
RUN sudo pip install awsebcli --upgrade
