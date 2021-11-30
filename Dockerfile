FROM remote-docker-hub.artifactory.danskenet.net/python:3.7
ADD certs/danskebank_root_ca.crt /usr/local/share/ca-certificates
ADD certs/danskebank_issuing_ca1.crt /usr/local/share/ca-certificates
RUN update-ca-certificates
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
ENTRYPOINT [ "/bin/bash" ]