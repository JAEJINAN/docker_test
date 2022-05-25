FROM python:3.8.9

WORKDIR /apps

COPY . /app/
COPY requirements.txt ./

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
# RUN pipwin install pyaudio

EXPOSE 8000

CMD ["python", "manage.py", "runserver"]