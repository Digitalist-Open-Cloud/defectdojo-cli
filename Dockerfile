FROM python:3

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir defectdojo-cli2

CMD ["/usr/local/bin/defectdojo"]
