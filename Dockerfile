FROM ubuntu
RUN apt-get update
RUN ["apt-get", "install",  "figlet", "-y"]
ENTRYPOINT ["figlet"]
CMD ["Hello World"]
