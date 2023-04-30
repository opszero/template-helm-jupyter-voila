FROM jupyter/scipy-notebook

WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN pip3 install voila

ADD . .

CMD ["voila", "--no-browser", "--enable_nbextensions=True", "--Voila.ip=0.0.0.0"]