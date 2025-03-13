FROM node:16

WORKDIR /app

# 全局安装 pnpm、yarn 及 concurrently
RUN npm install -g pnpm@8 concurrently

# 复制所有源码
COPY . .

RUN cd server && pnpm install

RUN cd client && yarn install

# 暴露前后端对应端口（假设 server 在 8848，client 在 8799，此处需调整 client 内部配置或容器外端口映射）
EXPOSE 8848 8799

# 利用 concurrently 同时启动 client 与 server
CMD concurrently "cd client && yarn dev" "cd server && node dist/index.js"
