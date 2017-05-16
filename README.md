# Setup

$ gem i docker-sync
$ cp .env.sample .env
$ docker-sync start
$ docker-compose up -d --build
$ docker-compose exec web bundle install --path vendor/bundle
$ docker-compose exec web bundle exec rails s -b 0.0.0.0 -p 4000
