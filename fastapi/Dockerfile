# 
FROM python:3.7

# 
WORKDIR /code

RUN apt-get -y update

RUN apt-get install -y --no-install-recommends vim \
    build-essential \
    openssl libssl-dev
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

COPY ./requirements.txt /code/requirements.txt

# 
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# 
COPY ./app /code/app


# 
#CMD ["uvicorn", "app.main:app", "--proxy-headers", "--host", "0.0.0.0", "--port", "8000"]

