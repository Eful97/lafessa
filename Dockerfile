FROM python:3.11-slim-bullseye
WORKDIR /app
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/Eful97/lafessa
RUN pip install --no-cache-dir requirements.txt
EXPOSE 7860
CMD ["uvicorn", "run:main_app", "--host", "0.0.0.0", "--port", "7860", "--workers", "4"]

