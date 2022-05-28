FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b Yins-Userbot https://github.com/YinsXd/Yins-Userbot /home/yinsuserbot/ \
    && chmod 777 /home/yinsuserbot \
    && mkdir /home/yinsuserbot/bin/

COPY ./sample_config.env ./config.env* /home/yinsuserbot/

WORKDIR /home/yinsuserbot/

CMD ["bash","start"]
