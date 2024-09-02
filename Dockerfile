FROM python:3.10.6 AS Base

WORKDIR /src/

COPY requirements.txt  .

RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT [ "python", "manage.py", "runserver" ]