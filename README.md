# Slackin Dockerfile

## Deprecation notice

This repository is no longer maintained. Consider switching to another fork, for example [slackin-extended](https://github.com/emedvedev/slackin-extended).

## About

This will build and run [Slackin](https://github.com/rauchg/slackin) in a Docker container.

## You will need

* Your Slack organisation name (the subdomain part in your Slack URL)
* An API token for your organisation, generate one at https://api.slack.com/web

## Run from Dockerhub

`docker run --name myslackin -e SLACK_ORG=myOrg -e SLACK_TOKEN=mySlackWebApiToken -d chk1/slackin`

## Run from Github

Clone [this repo](https://github.com/codeformuenster/slackin-docker), put your Slack organization name and API key in the `docker-compose.yml`, then run:

`docker-compose up`

It will take a minute to build, then you should see output like the following:

```
slackin_1 | Wed Jan 28 2015 20:33:13 GMT+0000 (UTC) – online 5, total 10 (+1163ms)
slackin_1 | Wed Jan 28 2015 20:33:14 GMT+0000 (UTC) – fetching
```

You should then be able to reach the webinterface at [localhost:3000](http://localhost:3000).

If you are seeing errors similar to "invalid response from Slack" (along with some debugging information like `at SlackData.onres (/usr/local/lib/node_modules/slackin/node/slack.js:87:22) ... at _stream_readable.js:944:16`), then your API key and/or organization name are wrong.

## License

MIT License
