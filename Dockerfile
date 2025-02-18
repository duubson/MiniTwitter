# Wybierz obraz bazowy
FROM python:3.10-slim

# Ustaw katalog roboczy w kontenerze
WORKDIR /app

# Skopiuj pliki projektu do kontenera
COPY . /app

# Zainstaluj zależności
RUN pip install --no-cache-dir -r requirements.txt

# Eksponuj port 8000
EXPOSE 8000

# Uruchom serwer deweloperski
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
