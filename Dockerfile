FROM python:3

WORKDIR /tmp/workdir

COPY requirements.txt . 
RUN pip install -r requirements.txt

COPY chase_url .
COPY resolve_url . 

CMD [ "python3", "chase_url" ]