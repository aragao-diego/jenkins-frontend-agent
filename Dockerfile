FROM jenkinsci/slave

COPY jenkins-slave /usr/local/bin/jenkins-slave

USER root

RUN apt-get update && apt-get -y install nasm make dh-autoreconf pkg-config git-flow libpng-dev jq && apt-get clean && rm -rf /var/lib/apt/lists/*

USER jenkins

ENTRYPOINT ["jenkins-slave"]
