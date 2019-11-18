FROM node 

RUN mkdir /code  

WORKDIR /code

COPY .  .

EXPOSE 4000

CMD node index.js 
