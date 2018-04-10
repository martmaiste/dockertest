```
docker network create htm
```

```
docker run -d --name=db \
  --network=htm \
  -e POSTGRES_DB=drupaldb \
  -e POSTGRES_USER=drupaluser \
  -e POSTGRES_PASSWORD=drupalpassword \
  -v db_data:/var/lib/postgresql  \
postgres:10.3
```

```
docker run -d --name drupal -p 8080:80 --network=htm --link db:db drupal-prod
```
