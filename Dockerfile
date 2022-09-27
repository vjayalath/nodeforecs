FROM node:12.18.4-alpine
WORKDIR /nodeforecs
ENV PATH /nodeforecs/node_modules/.bin:$PATH
COPY package.json
RUN npm install
COPY ../
EXPOSE 3000
CMD ["node","./routes/index.js"]