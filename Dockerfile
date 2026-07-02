# Lightweight Nginx base image
FROM nginx:alpine

# Copy site files directly into Nginx's web root
COPY index.html /usr/share/nginx/html/index.html
COPY about.html /usr/share/nginx/html/about.html
COPY contact.html /usr/share/nginx/html/contact.html
COPY style.css /usr/share/nginx/html/style.css
COPY images/ /usr/share/nginx/html/images/

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
  CMD wget -q --spider http://localhost/ || exit 1
