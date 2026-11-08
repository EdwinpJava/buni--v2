FROM python:3.10-slim

WORKDIR /app

# Copiar el contenido del repositorio al contenedor
COPY . .

# Buscar e instalar requirements.txt si está en la raíz o en buniv2
RUN if [ -f "requirements.txt" ]; then pip install --no-cache-dir -r requirements.txt; \
    elif [ -f "buniv2/requirements.txt" ]; then pip install --no-cache-dir -r buniv2/requirements.txt; fi

EXPOSE 5000

# Comando para ejecutar Flask con Gunicorn
CMD ["sh", "-c", "if [ -f app.py ]; then gunicorn app:app --bind 0.0.0.0:5000; else cd buniv2 && gunicorn app:app --bind 0.0.0.0:5000; fi"]
