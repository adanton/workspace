# Utiliza una imagen base de Python
FROM python:3.13.0-alpine3.20

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo requirements.txt
COPY dockers/requirements.txt /app/

# Instala las dependencias
RUN apk update
RUN apk upgrade
RUN apk add git postgresql-dev
RUN apk cache clean
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
RUN pip cache purge

# Copia el resto de los archivos del proyecto
COPY . /app/

# Exponer el puerto donde se ejecutará el servidor de desarrollo de Django
EXPOSE 8000

# Comando para ejecutar el servidor de desarrollo
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
