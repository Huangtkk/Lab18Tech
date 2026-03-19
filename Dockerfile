# Imagen base oficial de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos al contenedor
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# Expone el puerto donde Flask correrá
EXPOSE 5000

# Comando para ejecutar la app
CMD ["python", "app.py"]