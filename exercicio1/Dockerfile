FROM ubuntu
RUN ["apt", "-y", "update"]
RUN ["apt", "-y", "install", "nmap"]
ENTRYPOINT ["nmap", "-p", "1-1000", "-sV", "-sS", "-T4"]
CMD ["127.0.0.1"]
