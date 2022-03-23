FROM node:12-buster-slim

WORKDIR /ecosia
#copying the required js files
COPY *.js* /ecosia/

#Install the required dependencies
RUN npm install

#Create a non-root-user
RUN useradd bala
USER bala
EXPOSE 3000
CMD ["node","index.js"]