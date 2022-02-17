# FROM node:17-alpine
FROM denoland/deno
WORKDIR /test
COPY . .
RUN deno cache deps.js
CMD ["deno","test","--allow-all"] ]