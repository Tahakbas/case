FROM nginx
WORKDIR /app
COPY . .
EXPOSE 80
RUN cat hbcase.txt > /usr/share/nginx/html/index.html

