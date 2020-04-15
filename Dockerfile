FROM ubuntu

LABEL "com.github.actions.name"="transfer Actions"
LABEL "com.github.actions.description"="Run git commands"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="https://github.com/biner/transfer"
LABEL "homepage"="https://github.com/biner/transfer"


COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
