FROM node:16

WORKDIR /

COPY . .

RUN npm install

ENV REACT_APP_BACKEND_URL=http://localhost

RUN npm run build

RUN npm install -g serve

RUN useradd -m appuser

USER appuser

CMD serve -s -l 5000 build