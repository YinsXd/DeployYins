FROM ayiinxd/ayiin-userbot:buster
#AyiinXd
RUN git clone -b AyiinUbot https://github.com/YinsXd/AyiinUbot /home/ayiinubot/ \
    && chmod 777 /home/ayiinubot \
    && mkdir /home/ayiinubot/bin/

COPY ./sample_config.env ./config.env* /home/ayiinubot/

WORKDIR /home/ayiinubot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
