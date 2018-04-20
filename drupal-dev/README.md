```
docker network create htm
```

```
docker run -d --name=db \
  --network=htm \
  -e POSTGRES_DB=drupaldb \
  -e POSTGRES_USER=drupaluser \
  -e POSTGRES_PASSWORD=drupalpassword \
  -v $HOME/data/postgres:/var/lib/postgresql  \
postgres:10.3
```

```
docker run -d --name drupa-dev \
  --network=htm \
  -p 8080:80 \
  --link db:db \
  -v $HOME/data/app:/app \
drupal-dev
```
