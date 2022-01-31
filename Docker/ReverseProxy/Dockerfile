FROM nginx:latest
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./entrypoint.sh .

RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]