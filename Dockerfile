FROM ubuntu


RUN wget https://git.io/file-transfer
RUN sh file-transfer

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
