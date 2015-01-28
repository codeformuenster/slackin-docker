# Slackin Dockerfile

This will build and run [Slackin](https://github.com/rauchg/slackin) in Docker based on the [dockerfile/nodejs] Dockerfile.

## Run

Put your Slack API key and organization name (the subdomain part in your Slack URL) in the `fig.yml`, then run:

`fig up slackin`

It will take a minute to build, then you should see output like the following:

```
slackin_1 | Wed Jan 28 2015 20:33:13 GMT+0000 (UTC) – online 5, total 10 (+1163ms)
slackin_1 | Wed Jan 28 2015 20:33:14 GMT+0000 (UTC) – fetching
```

You should then be able to reach the webinterface at [localhost:3000](http://localhost:3000).

If you are seeing errors similar to "invalid response from Slack", then your API key or organization name is wrong.

## License

MIT