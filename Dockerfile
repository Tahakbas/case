FROM nginx
WORKDIR /app
COPY . .
EXPOSE 80
SHELL ["/bin/bash"]
RUN hbcase.txt > /usr/share/nginx/html/index.html
