# 使用轻量化 Node.js 镜像
FROM node:16

WORKDIR /app

# 安装 pnpm 全局依赖
RUN npm install -g pnpm@8

# 复制所有源码（确保 dist 目录已生成，如没有请预先构建）
COPY . .

# 安装依赖
RUN pnpm install

# 暴露服务端口（假设 Express 监听 8848 端口）
EXPOSE 8848

# 启动后端应用
CMD ["node", "dist/index.js"]
