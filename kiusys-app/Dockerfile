FROM python:3.9
WORKDIR /kiusys_app
COPY . /kiusys_app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 80
CMD ["uvicorn", "kiusys_app:app", "--host", "0.0.0.0", "--port", "80"]