FROM debian:stable-slim

ARG VERSION=1.80.10

RUN apt update && apt install gconf-service \
                                gconf2 \
                                libnotify4 \
                                libappindicator3-1 \
                                libasound2 \
                                libatk1.0-0 \
                                libc6 \
                                libcairo2 \
                                libcups2 \
                                libdbus-1-3 \
                                libexpat1 \
                                libfontconfig1 \
                                libgcc1 \
                                libgconf-2-4 \
                                libgdk-pixbuf2.0-0 \
                                libglib2.0-0 \
                                libgtk-3-0 \
                                libnspr4 \
                                libpango-1.0-0 \
                                libpangocairo-1.0-0 \
                                libsecret-1-0 \
                                libstdc++6 \
                                libx11-6 \
                                libx11-xcb1 \
                                libxcb1 \
                                libxcomposite1 \
                                libxcursor1 \
                                libxdamage1 \
                                libxext6 \
                                libxfixes3 \
                                libxi6 \
                                libxrandr2 \
                                libxrender1 \
                                libxss1 \
                                libxtst6 \
                                ca-certificates \
                                fonts-liberation \
                                libappindicator1 \
                                libnss3 \
                                lsb-release \
                                xdg-utils \
                                wget \
                                -y && rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/burtonator/polar-bookshelf/releases/download/v$VERSION/polar-bookshelf-$VERSION-amd64.deb -O polar-bookshelf-amd64.deb

RUN dpkg -i polar-bookshelf-amd64.deb

RUN useradd -m polar
USER polar

CMD ["/usr/bin/polar-bookshelf"]
