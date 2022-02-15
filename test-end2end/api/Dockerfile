FROM node:17-alpine
RUN npm i -g httpyac
WORKDIR /test
CMD ["httpyac", "**/*.http", "--all","-e", "production", "-o", "short" ]