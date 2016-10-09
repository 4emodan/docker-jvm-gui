# Based on the yenpai/jetbrains-base

FROM yenpai/oracle-jdk-8
MAINTAINER Artyom Lonsky <artyom.lonsky@gmail.com>

# Install the libraries needed to run a JVM in GUI mode
RUN apt-get update -qy && \
	apt-get install -qy --no-install-recommends \
		libgtk2.0-0 libcanberra-gtk-module libxext-dev libxrender-dev libxtst-dev && \
	apt-get clean && \
	apt-get autoremove -qy && \
	rm -rf /var/lib/apt/lists/*

# Install fonts for unicode
RUN apt-get update -qy && \
	apt-get install -qy --no-install-recommends \
		fonts-ipafont-gothic \
		xfonts-100dpi xfonts-75dpi xfonts-cyrillic xfonts-scalable \
		ttf-wqy-microhei && \
	apt-get clean && \
	apt-get autoremove -qy && \
	rm -rf /var/lib/apt/lists/*