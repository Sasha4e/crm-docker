# UFO CRM Docker Environment

[![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](https://nodesource.com/products/nsolid)

Environment.

  - Docker version 20.10.3
  - docker-compose version 1.24.0

To run project...

```sh
$ cp .env.example .env
$ docker-compose build
$ docker-compose up -d
$ docker-compose exec php bash
```

Require:
Node v10.18.1
gulp@3.9.1 local
gulp-cli@1.4.0 global
