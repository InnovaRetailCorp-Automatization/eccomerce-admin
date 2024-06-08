FROM node:20.5.1-alpine
RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN npm cache clean --force
RUN npm install
RUN npx prisma generate
RUN npm install cloudinary
RUN npm run build
EXPOSE 3000
ENTRYPOINT ["sh", "start.sh"]