FROM alpine:3.19
WORKDIR /srv/app
RUN set -eux ; \
	apk add --no-cache \
		bash \
		bzip2 \
		ca-certificates \
		curl \
		git \
		openssh-client \
		openssl \
		pigz \
		rsync \
		tar \
		tmux \
		wget \
		xz \
		zip \
		zstd \
	; \
	apk add ccze --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ --allow-untrusted ; \
	rm -rf /var/cache/apk/*