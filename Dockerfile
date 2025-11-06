FROM nginx:alpine

# Copiamos nuestra configuración para que Nginx escuche en el puerto 3000
COPY default.conf /etc/nginx/conf.d/default.conf

# Copiamos el HTML al directorio público de Nginx
COPY index.html /usr/share/nginx/html/index.html

# Exponemos el puerto 3000 (el mismo que está en values.yaml)
EXPOSE 3000