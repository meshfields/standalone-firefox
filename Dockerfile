FROM selenium/standalone-firefox

RUN apt-get update && apt-get install -y \
  python3-pip && \
  pip3 install selenium && \
  cd /work