FROM nginx:alpine
LABEL "MAINTAINER"="Sakarin Kammanee <Sakarin@coe.phuket.psu.ac.th>"

RUN apk update && apk add --update tzdata
ENV TZ=Asia/Bangkok
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN rm -rf /var/cache/apk/*
