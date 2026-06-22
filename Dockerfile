FROM nginx:alpine

# Invalidate the cache whenever a new commit is pushed
ARG COMMIT_SHA=unknown
ENV IMAGE_CACHE_BUST=$COMMIT_SHA

COPY *.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
EXPOSE 80
