FROM python:3
RUN wget https://download.fgit.cf/harryhare/1point3acres/archive/refs/heads/main.zip && \
    unzip main.zip && \
    mv 1point3acres-main 1point3acres && \
    rm main.zip
WORKDIR /1point3acres
RUN pip install -r requirements.txt
COPY credentials.json /1point3acres/configure/data.json
# Add crontab entry
RUN apt-get update && apt-get -y install cron && \
    echo "15 8 * * * cd /1point3acres/src && python3 service.py 2>&1 1>/tmp/1point3acres.log" >> /etc/crontab && \
    echo "" >> /etc/crontab
CMD ["cron", "-f"]
