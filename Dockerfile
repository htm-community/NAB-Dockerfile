# Set the base image to Ubuntu
FROM numenta/nupic

# File Author / Maintainer
MAINTAINER ALireza Hajibagheri (alireza@corvana.com)

# Set enviroment variables needed by NuPIC
ENV NUPIC /usr/local/src/NAB

# OPF needs this
ENV USER docker

# Change work directory
WORKDIR /usr/local/src

# Clone NAB
RUN git clone https://github.com/numenta/NAB

# Change directory to NAB
WORKDIR /usr/local/src/NAB

# Install NAB python requirments
RUN pip install -r requirements.txt

# Install NAB
RUN python setup.py install --user

WORKDIR /home/docker