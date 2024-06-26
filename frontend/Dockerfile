FROM nginx
RUN rm -rf /usr/share/nginx/html/index.html
# COPY code /usr/share/nginx/html/ 
# If we keep above here below layers frequently change again & again
RUN rm -rf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/cache/nginx/client_temp && \
        mkdir -p /var/cache/nginx/proxy_temp && \
        mkdir -p /var/cache/nginx/fastcgi_temp && \
        mkdir -p /var/cache/nginx/uwsgi_temp && \
        mkdir -p /var/cache/nginx/scgi_temp && \
        chown -R nginx:nginx /var/cache/nginx && \
        chown -R nginx:nginx /etc/nginx/ && \
        chmod -R 755 /etc/nginx/ && \
        chown -R nginx:nginx /var/log/nginx
RUN touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid /run/nginx.pid
COPY expense.conf /etc/nginx/nginx.conf
COPY code /usr/share/nginx/html/ 
# Above is frequently changing command so, we kept at last
# This above copy command if paste after line 4 then below all comands will run again (Waste of time)
# Till above is root access
USER nginx 