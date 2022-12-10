This is just a simple Docker setup for hacking on [Pico CMS](https://picocms.org).

# Prerequisites

* docker

# First time setup

```
$ git clone [this repo]
$ cd [this repo]
$ git clone git@github.com:picocms/pico-composer
$ docker build -t pico_dev .
$ ./docker-run.sh
```

Once the container is running, just browse to http://localhost:8080/pico.

# After the first time

```
$ ./docker-run.sh
```

# Start a shell

```
$ docker exec -it pico_dev sh
```

# Watch the logs

```
$ docker logs -f pico_dev
```

