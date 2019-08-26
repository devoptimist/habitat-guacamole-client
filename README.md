# guacamole-client

Deploys the java web client of Apache Guacamole inside a Tomcat server
## Maintainers

sbrown@chef.io

## Type of Package
Service

## Usage
Set user toml file with the required settings and load the service into a habitat supervisor

## Bindings
This service can optionally bind to the guacamole-webserver habitat service, in doing so it
configures the tomcat server to accept an dowstream proxy
```
hab svc load devoptimist/guacamole-client --binding-mode relaxed --bind webproxy:guacamole-webserver.default 
```

## Topologies

### Standalone

## Update Strategies

At once

### Configuration Updates

see default.toml for all configuration options
