FROM ubuntu:18.04
RUN apt update
RUN apt install default-jdk -y
RUN apt install git -y
RUN apt install maven -y
WORKDIR /javaapp
RUN cd /javaapp
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello
WORKDIR /javaapp/boxfuse-sample-java-war-hello
RUN mvn clean package -DskipTests