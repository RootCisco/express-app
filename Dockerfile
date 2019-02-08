FROM node:10.14.2-alpine

RUN apk add --no-cache shadow && \
    groupadd -g 62000 app && \
    useradd -g 62000 -l -r -m -s /bin/false -u 62000 app

ENV HOME="/home/app" \
    NODE_ENV="development" \
    PORT="3000"

COPY /app ${HOME}/src
RUN chown -R app:app ${HOME}/*

USER app
WORKDIR ${HOME}/src
RUN npm install --no-cache --no-progress

EXPOSE 3000
CMD ["npm", "start"]
