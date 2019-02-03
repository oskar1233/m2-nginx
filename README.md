To be used with e.g. docker-compose or Kubernetes.

You'll need to insert code to `/var/www` alongside with `nginx.sample.conf` file which's included with Magento 2 starter project.

You can configure the image with environment variables:
- `server_name` with `DOMAIN` variable,
- `listen` with `PORT` variable.

Example: ```docker run -e PORT=8080 oskar1233/m2-nginx```
