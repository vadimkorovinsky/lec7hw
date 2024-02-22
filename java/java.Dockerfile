FROM ubuntu:18.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install git -y
RUN apt install maven -y
WORKDIR /javaapp
RUN cd /javaapp
RUN git clone https://github.com/koddas/war-web-project.git
RUN cd war-web-project
WORKDIR /javaapp/war-web-project
RUN mvn clean package