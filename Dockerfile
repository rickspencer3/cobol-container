## BUILDING
##   (from project root directory)
##   $ docker build -t rickspencer3-cobol-container .
##
## RUNNING
##   $ docker run rickspencer3-cobol-container

FROM gcr.io/stacksmith-images/debian-buildpack:wheezy-r8

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="2vmu83j" \
    STACKSMITH_STACK_NAME="rickspencer3/cobol-container" \
    STACKSMITH_STACK_PRIVATE="1"

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

RUN apt-get update
RUN apt-get install -y open-cobol

# Set default WORKDIR
WORKDIR /source
