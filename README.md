# circleci-node-aws

CircleCI 2.0 image for NodeJS with AWS CLI and AWS EB CLI

## Usage

```sh
$ docker run prople/node node -v
v10.15.3

$ docker run prople/node npm -v
6.4.1

$ docker run prople/node aws --version
aws-cli/1.16.132 Python/2.7.13 Linux/4.9.125-linuxkit botocore/1.12.122

$ docker run prople/node eb --version
EB CLI 3.14.13 (Python 2.7.1)

$ docker run \
  -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
  prople/node aws s3 ls
2017-01-01 00:19:30 test
```

## CircleCI example

Needs `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` env vars

```yaml
version: 2.0
jobs:
  build:
    docker:
      - image: prople/node

    steps:
      - checkout

      - run:
          run: Check node version
          command: node -v

      - run:
          run: Check npm version
          command: npm -v

      - run:
          run: Check AWS version
          command: aws --version

      - run:
          run: Check EB version
          command: eb --version

      - run:
          run: List all buckets
          command: aws s3 ls
```
