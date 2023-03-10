FROM python:3.10

EXPOSE 5000

RUN mkdir /app/ && mkdir /app/src

COPY pyproject.toml /app
COPY src /app/src/

WORKDIR /app

RUN ["/bin/bash", "-c", "pip install git+https://github.com/vineetbansal/guidescan.git#egg=guidescan[dev,web]"]

ENV FLASK_APP=guidescan.flask:create_app
ENTRYPOINT ["/bin/bash", "-c"]
CMD ["exec python -m flask run --host=0.0.0.0"]
