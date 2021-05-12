FROM ubuntu:bionic

RUN apt-get update && apt-get install -y sl

RUN apt-get install -y git python3 python3-pip virtualenv libopenblas-base liblas-c3

RUN git clone https://github.com/Oslandia/py3dtiles

WORKDIR py3dtiles

RUN virtualenv -p /usr/bin/python3 venv
RUN . venv/bin/activate
RUN /py3dtiles/venv/bin/pip install -e .
RUN /py3dtiles/venv/bin/python setup.py install
RUN ln -s /py3dtiles/venv/bin/py3dtiles /usr/local/bin

ENTRYPOINT [ "py3dtiles" ]
