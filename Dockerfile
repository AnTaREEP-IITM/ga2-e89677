FROM python:3.11-slim
RUN useradd -m -u 1000 appuser
ENV APP_PORT=7254
EXPOSE 7254
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
USER appuser
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "7254"]
