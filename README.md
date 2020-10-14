# rms-discovery-service

This application serves as the implementation of the service discovery pattern for this microservice ecosystem. The current implementation leverages Netflix OSS Eureka, which is made available through the Spring Cloud project.

As is the case with the other services in this ecosystem, this service is config-first - meaning it will seek out the its configuration from an external configuration server. The implementation for the configuration server can be found within the `rms-config-service` repository.