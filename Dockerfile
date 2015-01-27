FROM rails:4.2.0

MAINTAINER Kazuya Kagawa "kazukgw@gmail.com"

RUN npm install -g bower
RUN gem install pry annotate pry-rails pry-doc pry-stack_explorer pry-byebug \
better_errors rack-mini-profiler timecop rails_best_practices minitest-rails \
factory_girl_rails database_cleaner mocha bullet yajl-ruby devise \
bootstrap-sass activerecord-import haml-rails parallel
