FROM node:20.3.1-alpine
RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN npm cache clean --force
RUN npm install cloudinary --force
RUN npm install @prisma/client
RUN npm install stripe
RUN npx prisma generate
EXPOSE 3000
CMD ["npm", "run" ,"dev"]


