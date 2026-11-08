FROM python:3.10-slim

WORKDIR /app

# Copiar e instalar dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del código del proyecto
COPY . .

EXPOSE 5000

# Comando para iniciar la aplicación Flask con Gunicorn
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:5000"]
