FROM nginx
WORKDIR /app
COPY . .
EXPOSE 80
SHELL ["/bin/bash"]
RUN pwd
