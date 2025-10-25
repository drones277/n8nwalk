FROM n8nio/n8n:1.80.1

# Рабочая директория внутри контейнера
WORKDIR /data

# Переменные окружения для Render и n8n
ENV N8N_PORT=$PORT
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=https
ENV WEBHOOK_TUNNEL_URL=https://n8nwalk.onrender.com/
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_RUNNERS_ENABLED=true
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Запуск n8n
CMD ["n8n", "start"]
