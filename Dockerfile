FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/memune/pint.git

WORKDIR /home/pint/

RUN pip install -r requirements.txt

RUN echo "SECRET_KEY=django-insecure--ho1pd!92qy49r&h0*e3)8ehsdijndcepw1)+80-jruo63!yx(" > .env

RUN python manage.py migrate

EXPOSE 8888

CMD ["python", "manage.py", "runserver", "0.0.0.0:8888"]






