FROM registry.jetbrains.team/p/prj/containers/projector-webstorm:latest

RUN sudo apt-get update
RUN sudo apt-get install -y ca-certificates curl
RUN sudo apt-get install -y apt-transport-https
RUN sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
RUN sudo apt-get update
RUN sudo apt-get install -y kubectl


