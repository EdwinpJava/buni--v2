FROM python:3.10-slim

WORKDIR /app

# Copiar todo el repositorio al contenedor
COPY . .

# Buscar e instalar requirements.txt (sea en la raíz o dentro de buniv2)
RUN if [ -f "requirements.txt" ]; then pip install --no-cache-dir -r requirements.txt; \
    elif [ -f "buniv2/requirements.txt" ]; then pip install --no-cache-dir -r buniv2/requirements.txt; fi

EXPOSE 5000

# Iniciar la aplicación Gunicorn (detectando si app.py está en la raíz o en buniv2)
CMD ["sh", "-c", "if [ -f app.py ]; then gunicorn app:app --bind 0.0.0.0:5000; else cd buniv2 && gunicorn app:app --bind 0.0.0.0:5000; fi"]
