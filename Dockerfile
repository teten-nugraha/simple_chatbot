FROM python:3.10-bullseye

# required libraries
RUN pip install keras
RUN pip install tensorflow
RUN pip install numpy
RUN pip install nltk

# download packages from nltk library
RUN python -m nltk.downloader punkt
RUN python -m nltk.downloader wordnet
RUN python -m nltk.downloader omw-1.4

COPY . .

CMD [ "python", "./chatbot.py" ]
