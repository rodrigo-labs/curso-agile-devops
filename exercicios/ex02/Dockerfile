FROM ubuntu

RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "python-pip", "python-dev", "build-essential"]

COPY requirements.txt /
COPY color.py /
COPY templates/ /templates

RUN ["pip", "install", "-r", "requirements.txt"]

ENTRYPOINT ["python", "color.py"]

