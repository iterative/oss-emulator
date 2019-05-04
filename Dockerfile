FROM ruby:2.5
WORKDIR /oss-emulator
RUN echo "Asia/Shanghai" > /etc/timezone

COPY bin bin
COPY lib lib
COPY log log
COPY test test
COPY start_server.sh .
RUN gem install thor builder

EXPOSE 8880
CMD ["./start_server.sh"]
