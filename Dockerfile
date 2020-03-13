FROM python:3

WORKDIR /usr/src/app/

COPY ./requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

COPY . /usr/src/app/

ENTRYPOINT [ "python", "./crast.py" ]
