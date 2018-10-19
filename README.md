## nginx-reverse-proxy-and-basic-auth-sample

Reverse proxy and basic auth sample with use [nginx](https://nginx.org/en/).
I created it for learning.



## Run docker

```bash
docker build -t nginx-reverse-proxy-and-basic-auth-sample-image .
docker run --name rproxy-sample -d -p 80:80 nginx-reverse-proxy-and-basic-auth-sample-image
# access using browser ---> localhost
```



## Basin auth

```
username:test
password:password
```



## Proxy pass

http://ip-api.com/json



## development

Development docker image

When development Using name (`dev-reverse-proxy`) with a shorter length.
This is your preference

```bash
docker run -it --name dev-reverse-proxy -p 80:80 centos:7 /bin/bash

# if you wont docker save
exit
docker commit 'dev-reverse-proxy' dev-reverse-proxy:<Version ex:0.1>
docker run -it --name dev-reverse-proxy -p 80:80 dev-reverse-proxy:<Version> /bin/bash

# or if you wont file share
docker run -it -v $(pwd):/tmp/share --name dev-reverse-proxy -p 80:80 dev-reverse-proxy:<Version> /bin/bash
# ---> You can keep proceed development

# if development docker stop and remove
docker stop dev-reverse-proxy && docker rm dev-reverse-proxy
```



Running docker image

```bash
# if you wont attach running development docker container
docker exec -it rproxy-sample bash
```



## About nginx.conf

`nginx.conf` is created from the [nginx](https://nginx.org/en/) project.
License for this project is [here([2-clause BSD-like license](https://nginx.org/LICENSE))](https://nginx.org/LICENSE).