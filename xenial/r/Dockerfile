FROM rstudio/r-base:xenial
COPY --from=rstudio/r-build:xenial /opt/R/R-3.4.3-xenial.tar.gz /opt/R/R-3.4.3-xenial.tar.gz
RUN cd /opt/R && \
	tar -xzvf R-3.4.3-xenial.tar.gz
