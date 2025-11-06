FROM nginx:alpine

# Preparamos los directorios que Nginx necesita para escribir
RUN mkdir -p /var/cache/nginx/client_temp \
    && chgrp -R 0 /var/cache/nginx /var/run /var/log/nginx \
    && chmod -R g+rwx /var/cache/nginx /var/run /var/log/nginx

# Copiamos nuestra configuración para que Nginx escuche en el puerto 3000
COPY default.conf /etc/nginx/conf.d/default.conf

# Copiamos el HTML al directorio público de Nginx
COPY index.html /usr/share/nginx/html/index.html

# Exponemos el puerto 3000 (el mismo que está en values.yaml)
EXPOSE 3000