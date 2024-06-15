# Rails Project Tracker-App
Basic CRUD-App, based upon Rails 7 and SQLite.

## Docker

Edit last line in Dockerfile: `CMD ["./bin/rails", "server", "-b", "0.0.0.0"]`

Build Docker-Image: `docker build -t project-tracker .`

Run Docker-Image: `docker run -it -p 3000:3000 project-tracker`
