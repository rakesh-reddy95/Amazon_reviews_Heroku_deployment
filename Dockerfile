FROM continuumio/anaconda3:4.4.0
COPY . /usr/app/
EXPOSE 5000
WORKDIR /usr/app/
ADD app.py /
ADD . /user/app
RUN pip install -r requirements.txt
CMD ["python", "./app.py"]