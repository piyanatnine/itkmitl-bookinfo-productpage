FROM python:3.8

WORKDIR /usr/src/app/

COPY . /usr/src/app/
RUN pip install -r requirements.txt

EXPOSE 9080

CMD ["python", "/usr/src/app/productpage.py", "9080"]