FROM ubuntu:jammy

RUN apt-get update \
    && apt-get install -y nano
RUN groupadd -g 30025 domainusers 

RUN useradd -m -u 30016 -g 30025 alu10187821

USER alu10187821
WORKDIR /home/alu10187821

CMD ["/bin/bash"]
