FROM python:3.8-slim-buster as builder

ADD yapf/ /opt/program/yapf/
ADD .style.yapf /opt/program/.style.yapf
WORKDIR /opt/program/

ENV PYTHONPATH="/opt/program/yapf/"

# Define default command
ENTRYPOINT ["python", "yapf/yapf", "-i", "-r", "-p", "-vv"]
CMD [ "--help" ]
