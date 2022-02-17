FROM node:17-alpine
RUN npm i -g httpyac
WORKDIR /test
ENV NODE_ENV=production
COPY . .
CMD ["httpyac","send", "**/*.http", "--all","-e", "production", "-o", "exchange"]
