FROM registry.fedoraproject.org/fedora-minimal:32

RUN microdnf -y install git npm clojure; microdnf -y clean all \
    && npm install -g lunr sass \
    && curl -o /usr/bin/lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein \
    && chmod 755 /usr/bin/lein \
    && useradd deployer

USER deployer
WORKDIR /home/deployer
