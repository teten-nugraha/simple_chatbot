FROM python:3.10-bullseye

RUN pip install keras
RUN pip install tensorflow
RUN pip install numpy
RUN pip install nltk

# RUN pip install --upgrade pip

# RUN pip install pickle

COPY . .

CMD [ "python", "./chatbot.py" ]
