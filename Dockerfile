FROM ubuntu:12.04
MAINTAINER RStudio Docker <docker@rstudio.com>

# add R apt repository
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E084DAB9
RUN echo "deb http://cran.rstudio.com/bin/linux/ubuntu precise/" >> /etc/apt/sources.list.d/cran-rstudio.list

# add OpenJDK PPA
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 86F44E2A
RUN echo "deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu precise main" >> /etc/apt/sources.list.d/openjdk-ppa.list

# Set default locale
RUN update-locale --reset LANG=C.UTF-8

# update apt & install packages
RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    biblatex \
    build-essential \
    curl \
    jags \
    libatlas3gf-base \
    libboost-all-dev \
    libcairo2 \
    libcairo2-dev \
    libfftw3-dev \
    libgdal1-dev \
    libgraphviz-dev \
    libmyodbc \
    libmysqlclient15-dev \
    libnetcdf-dev \
    libproc-dev \
    libproj-dev \
    libprotoc-dev \
    libxml2-dev \
    libxt-dev \
    libxt6 \
    lsb-release \
    odbc-postgresql \
    protobuf-compiler \
    sudo \
    tdsodbc \
    texinfo \
    texlive \
    texlive-bibtex-extra \
    texlive-fonts-extra \
    texlive-latex-extra \
    texlive-xetex \
    unixodbc \
    unixodbc-dev \
    wget

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends openjdk-8-jdk
