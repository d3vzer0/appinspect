FROM python:3.7-slim

RUN apt-get update && apt-get install -y wget libjpeg-dev libxml2-dev libxslt-dev lib32z1-dev python-lxml
RUN pip install Pillow

WORKDIR /opt/splunktoolkit

# Download splunk appinspect
RUN wget https://download.splunk.com/misc/appinspect/splunk-appinspect-latest.tar.gz

# Install appinspect 
RUN pip install splunk-appinspect-latest.tar.gz

ENTRYPOINT ["splunk-appinspect"]
