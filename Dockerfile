FROM node:18
WORKDIR /app
COPY thinkify-main/client/package*.json ./
RUN npm install --only=production
COPY thinkify-main/client/. .
EXPOSE 3000
CMD ["npm", "start"]