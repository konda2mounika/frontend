FROM    nginx 
RUN     rm -rf /usr/share/nginx/html/* 
COPY    static  /usr/share/nginx/html/index.html 
ENV     COMPONENT=nginx 
EXPOSE  80 
LABEL   COMPONENT=${COMPONENT}
CMD     ["nginx", "-g", "daemon off;"]  
# CMD     nginx -g "daemon off;"