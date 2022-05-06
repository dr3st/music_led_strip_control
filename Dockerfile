FROM ubuntu:20.04

ARG GIT_URL=https://github.com/TobKra96/music_led_strip_control.git
ARG GIT_BRANCH=master

RUN \
	apt-get update && \
	apt-get -y upgrade && \
	DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install git libatlas-base-dev portaudio19-dev python3 python3-pip python3-scipy

RUN \
	cd /tmp/ && \
	git clone ${GIT_URL} /app && \
	cd /app && \
	pip3 install -r requirements.txt 

