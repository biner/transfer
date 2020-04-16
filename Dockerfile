FROM alpine

RUN wget https://curl.haxx.se/download/curl-7.55.1.tar.gz

RUN tar -xzvf curl-7.55.1.tar.gz
RUN cd curl-7.55.1
RUN ./configure
RUN make
RUN make install

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
