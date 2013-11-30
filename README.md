angry-caching-proxy
===================

_IMPORTANT NOTE:_ At the moment, you cannot connect to this container from another container on the same Docker host. Am working on a solution.

An angry-caching-proxy container for octohost.

`docker pull octohost/angry-caching-proxy`

Run it like this:

`docker run -d -p 8080:8080 octohost/angry-caching-proxy`

Then point your build scripts at it:

apt-get
--------

`http_proxy=http://ip.address.here:8080 sudo -E apt-get install sl`

Bundler (Rubygems)
--------

`http_proxy=http://ip.address.here:8080 bundle install`

npm
--------

With npm it is required to use the non-https version of the registry

`http_proxy=http://ip.address.here:8080 npm install --registry http://registry.npmjs.org/`
