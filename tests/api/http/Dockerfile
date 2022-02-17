FROM node:17-alpine
RUN npm i -g httpyac
WORKDIR /test
ENV NODE_ENV=production
ENV FORCE_COLOR=2
COPY . .
CMD ["httpyac","send", "**/*.http", "--all","-e", "production", "-o", "exchange"]
