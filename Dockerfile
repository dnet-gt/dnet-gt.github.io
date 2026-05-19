FROM ruby:3.2

RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    nodejs

WORKDIR /site

COPY Gemfile* ./

RUN bundle install

COPY . .

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload"]
