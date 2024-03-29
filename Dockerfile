FROM python:3.12.1

WORKDIR /app

COPY ./requirements.txt /app
RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY ./src .

CMD ["python", "-u", "main.py"]