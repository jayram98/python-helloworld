FROM python:3-alpine

WORKDIR /service

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . ./

EXPOSE 8080

# Run a simple HTTP server to keep the container running
CMD ["python3", "-m", "http.server", "8080"]
