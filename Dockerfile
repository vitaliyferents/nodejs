FROM node:16
WORKDIR /usr/lib/app
COPY package*.json ./nestjs-notes-todo-master
RUN npm install
RUN npm run build
EXPOSE 3000
CMD ["node", "dist/main.js"]
