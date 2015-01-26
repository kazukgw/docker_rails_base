FROM kazukgw/docker-ruby:2.2.0

MAINTAINER Kazuya Kagawa "kazukgw@gmail.com"

ENV NVM_DIR /root/.nvm
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.21.0/install.sh | bash
RUN chmod -R 755 /root/.nvm
# `source` is bash function
RUN bash -l -c 'source /root/.nvm/nvm.sh && nvm install 0.10.34 && nvm use 0.10.34 && nvm alias default 0.10.34'
RUN ln -s /root/.nvm/v0.10.34/bin/node /usr/bin/node && ln -s /root/.nvm/v0.10.34/bin/npm /usr/bin/npm
RUN npm install -g bower

RUN apt-get install -y libmysqld-dev
RUN apt-get install -y libpq-dev

