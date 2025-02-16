# Використовуємо офіційний образ Nginx
FROM nginx:latest

# Встановлюємо робочу директорію
WORKDIR /usr/share/nginx/html

# Видаляємо стандартні файли Nginx (за замовчуванням сторінку "Welcome to Nginx")
RUN rm -rf ./*

# Копіюємо наші файли сайту в контейнер
COPY . .

# Відкриваємо порт 80 для доступу до сайту
EXPOSE 80

# Запускаємо сервер Nginx
CMD ["nginx", "-g", "daemon off;"]

