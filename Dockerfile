FROM nginx

RUN apt update && apt install -y git python-gdal
RUN pip install flask
RUN pip install -e git+https://github.com/geopython/pywps.git@master#egg=pywps-dev

WORKDIR /usr/local
RUN git clone https://github.com/geopython/pywps-flask.git pywps-flask

WORKDIR /usr/local/pywps-flask
CMD (./demo.py)


