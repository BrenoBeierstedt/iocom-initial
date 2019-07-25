# Install instructions

## Dependencies

**Docker has to be installed and running.**

MAC: https://docs.docker.com/docker-for-mac/install/

Linux - Fedora: https://docs.docker.com/install/linux/docker-ce/fedora/ 


## Executing
just type

``./install.sh``

# Proxy

Nginx:latest

You need to manually edit the 
*/etc/hosts* 
file in your pc (Mac and linux) and add:

```
127.0.0.1   cashopera-adm.local.com
127.0.0.1   cashopera-api.local.com
127.0.0.1   neo4j.local.com
```

# Dockerfile 

## Operational System

debian:jessie-slim

## Language

NODE_VERSION 10.14.2

## Dependency Management

YARN_VERSION 1.12.3

## Main user

id=1001

## Buildade image size

185MB

## Work Directory

/opt/app-root/src

## Credits

* Breno Mazieiro <breno.mazieiro@plathanus.com.br>
* Natam Oliveira <natam.oliveira@plathanus.com.br>
* Pascoal Vernieri Pascoal Pinto Vernieri <pascoal.vernieri@plathanus.com.br>