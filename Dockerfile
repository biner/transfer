FROM ubuntu


RUN curl -sL https://git.io/file-transfer | sh 

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
