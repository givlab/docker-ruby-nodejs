FROM ruby:2.3

RUN \
  curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
  apt-get install -y nodejs && \
  apt-get clean && \
  rm -rf /var/cache/apt/* && \
  rm -rf /var/lib/apt/lists/*

RUN \
  npm install -g bower

RUN \
  echo "gem: --no-document" >> ~/.gemrc

CMD [ "bash" ]
