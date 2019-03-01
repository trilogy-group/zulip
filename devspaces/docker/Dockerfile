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
ADD assets/step1 /assets
WORKDIR /assets
RUN chmod +x ./setup.sh && ./setup.sh
ADD assets/step2 /assets
RUN chmod +x ./setup.sh && ./setup.sh
USER zulip
ADD assets/step3 /assets
RUN sudo chown zulip:zulip ./setup.sh && chmod +x ./setup.sh && ./setup.sh
USER root
RUN rm -rf /assets
WORKDIR /
USER zulip
CMD tail -f /dev/null