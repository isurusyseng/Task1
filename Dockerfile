FROM python:2.7.14

RUN mkdir /mnt/hello_word/
WORKDIR /mnt/hello_word/

COPY requirements.txt .
COPY dist/hello_world /mnt/hello_word/

EXPOSE 80

CMD [ "./hello_world" ]
