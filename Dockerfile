FROM ubuntu:xenial

ENV PORT    3000
RUN mkdir -p /u
ADD v2.crt /u/v2.crt
ADD v2.key /u/v2.key


ADD start /start

RUN chmod +x /start
CMD ./start
