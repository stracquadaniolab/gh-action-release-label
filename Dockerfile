FROM stracquadaniolab/vanilla:latest

LABEL org.stracquadaniolab.maintainer="gh-action-release-label"
LABEL org.stracquadaniolab.version="0.0.2"
LABEL org.stracquadaniolab.platform="github-action"

ADD ./entrypoint.sh /usr/bin/entrypoint.sh

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT [ "/usr/bin/entrypoint.sh" ]