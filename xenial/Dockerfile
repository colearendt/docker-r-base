FROM ubuntu:xenial
MAINTAINER RStudio Docker <docker@rstudio.com>

# add R apt repository
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0x51716619e084dab9
RUN echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" >> /etc/apt/sources.list.d/cran-rstudio.list

# Set default locale
RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get install -y locales
RUN update-locale --reset LANG=C.UTF-8

# update apt & install packages
RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    biber \
    build-essential \
    curl \
    jags \
    libatlas3-base \
    libboost-all-dev \
    libcairo2 \
    libcairo2-dev \
    libfftw3-dev \
    libgdal1-dev \
    libgraphviz-dev \
    libmysqlclient-dev \
    libnetcdf-dev \
    libproj-dev \
    libprotoc-dev \
    libxml2-dev \
    libxt-dev \
    libxt6 \
    lsb-release \
    odbc-postgresql \
    protobuf-compiler \
    sudo \
    wget \
    tdsodbc \
    unixodbc \
    unixodbc-dev

# Note: myodbc is not available for Xenial: https://launchpad.net/myodbc
RUN cd /tmp && \
    wget -q https://cdn.mysql.com/Downloads/Connector-ODBC/5.3/mysql-connector-odbc-5.3.11-linux-ubuntu16.04-x86-64bit.tar.gz && \
    tar zxf mysql-connector-odbc-5.3.11-linux-ubuntu16.04-x86-64bit.tar.gz && \
    cp mysql-connector-odbc-5.3.11-linux-ubuntu16.04-x86-64bit/bin/* /usr/local/bin && \
    cp mysql-connector-odbc-5.3.11-linux-ubuntu16.04-x86-64bit/lib/* /usr/local/lib && \
    myodbc-installer -a -d -n "MySQL ODBC 5.3 Driver" -t "Driver=/usr/local/lib/libmyodbc5w.so" && \
    rm -rf mysql-connector-odbc-5.3.11-linux-ubuntu16.04-x86-64bit*


# install text-live
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
    texinfo \
    texlive \
    texlive-bibtex-extra \
    texlive-fonts-extra \
    texlive-latex-extra \
    texlive-xetex 

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends openjdk-8-jdk
