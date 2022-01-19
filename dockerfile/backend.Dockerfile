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
# 아래 커맨드가 없으면 dco yml에서 커맨드 실행시 $PATH 없다고 에러남
CMD ["pwd"]
ENTRYPOINT [ "/bin/bash", "-l", "-c" ]
# uvicorn은 8000포트로 fastapi와 연동함.
EXPOSE 8000
# 
#CMD ["uvicorn", "app.main:app", "--proxy-headers", "--host", "0.0.0.0", "--port", "8000"]

