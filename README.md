# mss-infrastructure
Infrastructures in microservices by spring-cloud.

### start server one by one
#### start eureka-server
```
./gradlew :eureka-server:bootRun
```

#### start config-server
```
./gradlew :config-server:bootRun
```

### client provider
#### eureka client config
In bootstrap.yml file
```
eureka:
  client:
    serviceUrl:
      defaultZone: http://localhost:8181/eureka
    fetch-registry: true
    register-with-eureka: true
```
#### config client config
In bootstrap.yml file
```
spring:
  cloud:
    config:
      uri: http://localhost:7001
      discovery:
        enabled: true
        service-id: config-server
      fail-fast: true
```
