FROM semaphoreui/semaphore:v2.9.45

USER root

RUN apk add py3-pip
RUN pip install --upgrade ansible

RUN ansible-galaxy collection install --upgrade community.general

COPY ./requirements.txt requirements.txt

RUN pip install -r requirements.txt

USER 1001
