FROM octohost/nodejs
RUN npm install angry-caching-proxy -g
RUN mkdir /var/angry-caching-proxy

EXPOSE 8080

CMD /usr/bin/angry-caching-proxy --directory /var/angry-caching-proxy
