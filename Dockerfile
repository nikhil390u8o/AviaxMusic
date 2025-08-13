FROM nikolaik/python-nodejs:python3.10-nodejs19

RUN apt-get update --fix-missing && apt-get upgrade -y

RUN apt-get install -y --no-install-recommends ca-certificates ffmpeg

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY . /app/
WORKDIR /app/
RUN pip3 install --no-cache-dir -U -r requirements.txt

CMD bash start

