
FROM python:3.12

WORKDIR /scripts

COPY requirements.txt ./

RUN pip install --no-cache-dir --upgrade --verbose -r requirements.txt

COPY ./scripts .

CMD ["python", "./run_horizons.py"]