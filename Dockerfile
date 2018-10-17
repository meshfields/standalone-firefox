FROM selenium/node-firefox:3.14.0-helium
LABEL authors=SeleniumHQ

USER seluser

#====================================
# Scripts to run Selenium Standalone
#====================================
RUN apt-get update && \
  apt-get install -y \
  python3-pip && \
  pip3 install selenium

COPY start-selenium-standalone.sh /opt/bin/start-selenium-standalone.sh

#==============================
# Supervisor configuration file
#==============================
COPY selenium.conf /etc/supervisor/conf.d/


EXPOSE 4444

