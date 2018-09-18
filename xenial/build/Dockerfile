FROM rstudio/r-base:xenial

RUN apt-get update -qq && \
	apt-get build-dep r-base -y

# build R from source
RUN cd /usr/src && \
	wget https://cran.r-project.org/src/base/R-3/R-3.4.3.tar.gz && \
	tar -xzvf R-3.4.3.tar.gz && \
	cd R-3.4.3 && \
	./configure \
	  --prefix=/opt/R/$(cat VERSION) \
	  --enable-memory-profiling \
	  --enable-R-shlib \
	  --with-blas \
	  --with-lapack && \
	make && \
	make install

# build tar file
RUN cd /opt/R && \
	tar -zcvf R-3.4.3-xenial.tar.gz 3.4.3
