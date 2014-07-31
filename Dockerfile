FROM kazukgw/docker-ruby

MAINTAINER Kazuya Kagawa "kazukgw@gmail.com"

ENV NVM_DIR /root/.nvm
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.12.2/install.sh | bash
RUN chmod -R 755 /root/.nvm
# `source` is bash function
RUN bash -l -c 'source /root/.nvm/nvm.sh && nvm install 0.10.29 && nvm use 0.10.29 && nvm alias default 0.10.29' 
RUN ln -s /root/.nvm/v0.10.29/bin/node /usr/bin/node && ln -s /root/.nvm/v0.10.29/bin/npm /usr/bin/npm
RUN npm install -g bower

