FROM nginx:1.23-alpine

# Установка curl для health checks
RUN apk add --no-cache curl

# Копирование статического контента
COPY index.html /usr/share/nginx/html/

# Health check endpoint
RUN echo 'ok' > /usr/share/nginx/html/health

# Экспорт порта
EXPOSE 80

# Запуск Nginx
CMD ["nginx", "-g", "daemon off;"]