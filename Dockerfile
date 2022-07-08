FROM python:3.10-slim
WORKDIR /app
COPY . .
RUN pip3 install -r requirements.txt
EXPOSE 8000/tcp
CMD ["uvicorn", "--host=0.0.0.0", "main:app"]
