FROM python:3.6
LABEL maintainer="Hleb Kanonik <hleb_kanonik@epam.com>"
ENV tz tzlocal
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt && \
    pip install $tz
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["app/app.py"]
