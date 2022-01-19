# 
FROM python:3.7

# 
COPY ./fastapi /code
WORKDIR /code

RUN apt-get -y update

RUN apt-get install -y --no-install-recommends vim \
    build-essential \
    openssl libssl-dev
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

# 
RUN pip install --no-cache-dir -r /code/requirements.txt


EXPOSE 5000
# 
#CMD ["uvicorn", "app.main:app", "--proxy-headers", "--host", "0.0.0.0", "--port", "8000"]

