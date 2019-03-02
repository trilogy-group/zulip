FROM ubuntu:trusty
LABEL com.trilogy.company="trilogy" \
      com.trilogy.maintainer.email="jaime.bravo@aurea.com" \
      com.trilogy.maintainer.skype="jabhcl" \
      com.trilogy.product="zulip" \
      com.trilogy.service="devspace" \
      com.trilogy.stage="build" \
      com.trilogy.team="Eng.DevSpacesImport" \
      description="This file generates a docker image containing Zulip Application"
ENV DEBIAN_FRONTEND="noninteractive"
ADD assets /assets
RUN chmod +x assets/setup.sh && \
    assets/setup.sh
USER zulip
WORKDIR /srv/zulip
CMD tail -f /dev/null
