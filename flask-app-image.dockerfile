FROM mongo

RUN apt-get update && apt-get install -y python3-pip sudo

COPY app/ ./app

WORKDIR /app

RUN pip3 install -r requirements.txt

EXPOSE 5001

ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]

