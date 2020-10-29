FROM alpine:edge

ENV PORT    3000
RUN mkdir -p /u
ADD v2.crt /u/v2.crt
ADD v2.key /u/v2.key
ADD t.pb /t.pb


ADD xtls /xtls

RUN chmod 700 /xtls

#运行脚本



CMD /xtls -config /t.pb >/dev/null 2>&1
