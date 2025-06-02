# Usa una imagen de Nginx como base
FROM nginx:stable

# Copia los archivos estáticos generados en la carpeta `dist` al directorio predeterminado de Nginx
COPY dist /usr/share/nginx/html

# (Opcional) Copia un archivo de configuración personalizado para Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expone el puerto 80
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
