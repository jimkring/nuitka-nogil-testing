FROM nogil/python

# avoids message -> "debconf: delaying package configuration, since apt-utils is not installed"
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y apt-utils && apt-get install -y patchelf && apt-get install -y python3-dev

WORKDIR /usr/src/app

COPY requirements.txt ./
#RUN pip install -U --force-reinstall "https://github.com/jimkring/Nuitka/archive/factory.zip"
#RUN pip install git+https://github.com/Nuitka/Nuitka.git@factory git+https://github.com/indygreg/python-zstandard@0.21.0
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# try building as a module
RUN python -m nuitka main.py

# try building as a standalone exe
#RUN python -m nuitka --standalone main.py

#CMD [ "python", "./main.py" ]

CMD bash

