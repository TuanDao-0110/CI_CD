FROM node:18-alpine
WORKDIR /reactt_app_docker
ENV PATH = "./node_modules/.bin: $PATH"
COPY . .
RUN npm run build
CMD [ "npm", "start" ]
