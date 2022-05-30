FROM python:3.8

WORKDIR /usr/src/app

ENV PYTHONUNBUFFERED 1
ENV PYTHONIOENCODING=utf-8

COPY . /usr/src/app

COPY ./packages/. /usr/local/lib/python3.8/site-packages

WORKDIR /usr/src/app
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN apt-get update && apt-get install -y sudo

WORKDIR /usr/src/app/mls
RUN pip3 install git+https://github.com/SKT-AI/KoBART#egg=kobart
RUN python3 kobart_chatbot.py

WORKDIR /usr/src/app/mls/TTS
RUN pip3 install -q --no-cache-dir -e .
RUN python3 setup.py install

WORKDIR /usr/src/app/mls
# RUN python3 hajoon_tts.py
RUN pip3 install git+https://github.com/SKTBrain/KoBERT.git#egg=kobert_tokenizer&subdirectory=kobert_hf
RUN python3 multi_sentiment_cls.py

WORKDIR /usr/src/app

# RUN sudo apt-get install autoconf
# RUN sudo apt-get install libtool

# WORKDIR /usr/src/app/mls/mecab-0.996-ko-0.9.2
# RUN autoconf
# RUN ./configure
# RUN make
# RUN sudo make install


# WORKDIR /usr/src/app/mls/mecab-ko-dic-2.1.1-20180720
# RUN autoreconf
# RUN sh ./configure
# RUN make
# RUN sudo make install

# RUN sudo apt install git
# RUN bash <(curl -s https://raw.githubusercontent.com/konlpy/konlpy/master/scripts/mecab.sh)
# RUN pip3 install mecab-python

# WORKDIR /usr/src/app/mls/TTS
# RUN pip3 install -q --no-cache-dir -e .
# RUN python3 setup.py install

# WORKDIR /usr/src/app/mls
# RUN python3 hajoon_tts.py

# RUN pip3 install git+https://github.com/SKTBrain/KoBERT.git#egg=kobert_tokenizer&subdirectory=kobert_hf
# RUN python3 multi_sentiment_cls.py

# RUN apt install libgirepository1.0-dev gcc libcairo2-dev pkg-config python3-dev gir1.2-gtk-3.0
# RUN pip3 install pycairo
# RUN pip3 install PyGObject
# RUN pip3 python-mecab-ko==1.0.12