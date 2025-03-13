FROM node:18

WORKDIR /app

# 复制所有源码
COPY . .

# 安装依赖
RUN yarn install

# 暴露客户端开发服务端口（默认 yarn dev 所用端口，这里假设为 8799
EXPOSE 8799

# 启动前端开发服务
CMD ["yarn", "dev"]
