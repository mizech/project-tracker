# Rails Project Tracker-App
Basic CRUD-App, based upon Rails 7 and SQLite.

## Docker

Edit last line in Dockerfile: `CMD ["./bin/rails", "server", "-b", "0.0.0.0"]`

Build Docker-Image: `docker build -t project-tracker .`

Run Docker-Image: `docker run -it -p 3000:3000 project-tracker`

Run Docker-Image with Volume: `docker run -it -v ${PWD}:/rails -p 3000:3000 mizech/project-tracker`

Remove all Docker-resources: `docker system prune -a`

docker tag local-image:tagname new-repo:tagname
docker push new-repo:tagname

Publish a Docker-Image:

`docker login --username mizech`

`docker tag 347a5ddceb99 mizech/project-tracker`

`docker push mizech/project-tracker`


