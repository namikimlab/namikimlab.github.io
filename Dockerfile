FROM ruby:3.2.3-slim

# 필수 빌드 패키지 설치
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs npm

# 최신 bundler 설치
RUN gem install bundler -v 2.6.9

WORKDIR /srv/jekyll

COPY Gemfile* ./

RUN bundle install

COPY . .

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--force_polling", "--livereload"]
