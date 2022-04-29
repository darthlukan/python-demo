FROM registry.access.redhat.com/ubi8/python-39:latest

COPY ./demo.py /usr/bin/demo.py

ENTRYPOINT ["/usr/bin/demo.py"]
