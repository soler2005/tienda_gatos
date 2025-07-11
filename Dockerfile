# Usa una imagen base de Nginx para servir contenido web
FROM nginx:alpine

# Elimina la configuración predeterminada de Nginx para evitar conflictos
RUN rm /etc/nginx/conf.d/default.conf

# Copia tu archivo de configuración personalizado de Nginx
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

# Copia todos tus archivos estáticos desde el directorio actual
# al directorio de servicio de Nginx.
COPY . /usr/share/nginx/html

# Expone el puerto 80 del contenedor (puerto por defecto de Nginx)
EXPOSE 80

# Nginx se inicia por defecto con la imagen.
# CMD ["nginx", "-g", "daemon off;"]