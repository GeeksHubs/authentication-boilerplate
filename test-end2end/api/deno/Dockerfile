# FROM node:17-alpine
FROM denoland/deno
COPY . .
RUN deno cache deps.js
CMD ["deno","test","--allow-all"] ]