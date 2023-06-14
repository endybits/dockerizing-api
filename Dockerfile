FROM python:3.9

ENV PYTHONUNBUFFERED=1

RUN mkdir -p /opt/dockerizing-api

WORKDIR /opt/dockerizing-api

COPY ./requirements.txt /opt/dockerizing-api/requirements.txt

RUN python -m pip install --upgrade pip

RUN pip install -r /opt/dockerizing-api/requirements.txt

COPY ./app /opt/dockerizing-api/app

CMD [ "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8001" ]