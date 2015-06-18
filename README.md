# GEL Test: Typography

## Summary

This application is intended to provide red/green feedback on compliance with BBC GEL standards for typography.

## Installation

gel-test is built on CasperJS and Yadda. These have further dependencies, such as PhantomJS which are managed automatically via the npm tool. To begin you will need NodeJS and npm installed on your computer. There are then two steps required to get ready to run. The first is to install CasperJS. Note that a specific version (1.1.0) of CasperJS is required for the application to work without any conflicts.

```
npm install -g casperjs@1.1.0-beta3
```

Assuming CasperJS is installed and you have cloned the geltest-typography project repo, you can complete the installation of gel-test with the following commands:

```
cd geltest-typography
npm install
```

## Configuration

Note that CasperJS may require that proxy variables be set in your environmant if you are running the application behind a proxy server. For example:

```
export http_proxy="http://some.proxy.example.com:80"
export HTTP_PROXY="http://some.proxy.example.com:80"
export https_proxy="http://some.proxy.example.com:80"
export HTTPS_PROXY="http://some.proxy.example.com:80"
```

See the documentation for CasperJS for more information.

## Usage

gel-test requires two inputs: a feature file (written in the standard "given, when, then" style) and the URL of a fixture page to run the feature tests against.

All feature files are stored in the `features` folder of the project. The test URL is temporarily hardcoded in the application source code but will eventually be possible to control via a `config.json` file.

To run the tests you need to use the path to the specific 1.1.0 version of CasperJS that you installed in the previous step. From the project root folder:

```
/usr/local/lib/node_modules/casperjs/bin/casperjs test index.js
```
