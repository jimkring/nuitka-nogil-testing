FROM nogil/python

RUN apt update
RUN apt install patchelf

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install -U --force-reinstall "https://github.com/Nuitka/Nuitka/archive/factory.zip"
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN python -m nuitka --standalone main.py

#CMD [ "python", "./main.py" ]

CMD bash

