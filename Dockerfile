FROM node:18-alpine
LABEL maintainer "akashdeepsinghgill7007@gmail.com"
LABEL build_date "2024-02-06"
WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3000
CMD ["node", "app.js"]
