# 使用 Nginx 作为基础镜像
FROM nginx:latest

# 将本地的静态网页文件夹复制到镜像中的指定位置
COPY ./ /usr/share/nginx/html

# 暴露 Nginx 默认的 HTTP 端口
EXPOSE 80

# 容器启动时自动运行 Nginx
CMD ["nginx", "-g", "daemon off;"]