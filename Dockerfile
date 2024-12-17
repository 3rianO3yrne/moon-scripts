
FROM python:3.12

WORKDIR /code

COPY requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade --verbose -r /code/requirements.txt

COPY ./app /code/app

COPY ./scripts /code/scripts

CMD ["fastapi", "run", "app/main.py", "--port", "8000", "--proxy-headers"]