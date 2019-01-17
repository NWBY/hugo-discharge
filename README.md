# hugo-discharge

Dockerfile with Hugo: static site generator and discharge installed.

Hugo version `0.53` installed.

Discharge is a node package that allows quick deployment of static sites to AWS S3. It supports custom domains, SSL and CDN. It require AWS credentials in a file on your machine or if you're using a CI/CD tool these will need to be exposed as environment variables, for example:
```
AWS_ACCESS_KEY_ID=value
AWS_SECRET_ACCESS_KEY=value
```

## Usage
Running the commands below allow you to check you have the latest versions of hugo and discharge installed.
```
hugo version
discharge --version
```


