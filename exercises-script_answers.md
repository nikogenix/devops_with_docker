### exercise 1.1

```console
docker container run -d nginx
docker container run -d nginx
docker container run -d nginx

docker container ls
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS     NAMES
2331b25bd160   nginx     "/docker-entrypoint.…"   3 seconds ago   Up 2 seconds   80/tcp    silly_northcutt
b8631231d683   nginx     "/docker-entrypoint.…"   4 minutes ago   Up 4 minutes   80/tcp    nice_northcutt
76cb28466f30   nginx     "/docker-entrypoint.…"   4 minutes ago   Up 4 minutes   80/tcp    infallible_brattain

docker container stop silly_northcutt
docker container stop nice_northcutt

docker ps -a
CONTAINER ID   IMAGE     COMMAND                  CREATED              STATUS                      PORTS     NAMES
2331b25bd160   nginx     "/docker-entrypoint.…"   About a minute ago   Exited (0) 22 seconds ago             silly_northcutt
b8631231d683   nginx     "/docker-entrypoint.…"   5 minutes ago        Exited (0) 16 seconds ago             nice_northcutt
76cb28466f30   nginx     "/docker-entrypoint.…"   5 minutes ago        Up 5 minutes                80/tcp    infallible_brattain
```

### exercise 1.2

```console
docker container prune
docker image prune

docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES

docker images
REPOSITORY   TAG       IMAGE ID   CREATED   SIZE
```

### exercise 1.3

```console
docker run -d -it devopsdockeruh/simple-web-service:ubuntu

docker ps -a
CONTAINER ID   IMAGE                                      COMMAND                  CREATED              STATUS                          PORTS     NAMES
a7dcc72814c7   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"    6 seconds ago        Up 5 seconds                              trusting_wright

docker exec -it trusting_wright bash

tail -f ./text.log
2023-06-19 21:17:29 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```

### exercise 1.4

```console
docker run -it --name looper-it ubuntu bash -c 'apt-get update && apt-get install -y curl && while true; do echo "Input website:"; read website; echo "Searching..."; sleep 1; curl "http://$website"; done'

Input website:
helsinki.fi
Searching...
<html>
<head><title>301 Moved Permanently</title></head>
<body>
<center><h1>301 Moved Permanently</h1></center>
<hr><center>nginx/1.20.1</center>
</body>
</html>
```

### exercise 1.5

```console
docker run -d -it devopsdockeruh/simple-web-service:ubuntu
docker run -d -it devopsdockeruh/simple-web-service:alpine

docker ps -a
CONTAINER ID   IMAGE                                      COMMAND                  CREATED          STATUS                       PORTS     NAMES
c7f21d3b33cc   devopsdockeruh/simple-web-service:alpine   "/usr/src/app/server"    21 seconds ago   Up 18 seconds                          kind_khorana
73b845bac1cd   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"    35 seconds ago   Up 34 seconds                          exciting_vaughan

docker exec -it exciting_vaughan bash
tail -f ./text.log
Secret message is: 'You can find the source code here: https://github.com/docker-hy'

docker exec -it kind_khorana sh
tail -f ./text.log
Secret message is: 'You can find the source code here: https://github.com/docker-hy'

```

### exercise 1.6

```console
docker run -it devopsdockeruh/pull_exercise

Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"
```

### exercise 1.7

```console
docker build . -t curler
docker run -it curler

Input website:
helsinki.fi
Searching..
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>301 Moved Permanently</title>
</head><body>
<h1>Moved Permanently</h1>
<p>The document has moved <a href="https://www.helsinki.fi/">here</a>.</p>
</body></html>
```

### exercise 1.8

```console
docker build . -t web-server
docker run web-server

[GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
- using env:   export GIN_MODE=release
- using code:  gin.SetMode(gin.ReleaseMode)

[GIN-debug] GET    /*path                    --> server.Start.func1 (3 handlers)
[GIN-debug] Listening and serving HTTP on :8080
```
