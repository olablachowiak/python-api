FROM cgr.dev/chainguard/python:latest-dev AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt --user

FROM cgr.dev/chainguard/python:latest AS run

WORKDIR /app

# Make sure you update Python version in path
COPY --from=builder /home/nonroot/.local/lib/python3.12/site-packages /home/nonroot/.local/lib/python3.12/site-packages

COPY main.py .

ENTRYPOINT [ "hypercorn", "main:app", "--bind", "0.0.0.0:8080" ]