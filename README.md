# Docker registry deployment

HTTPS deployment of docker registry with frontend


## Usage

1. Pull this repo
2. Create .env
3. Set DOMAIN and EMAIL varibles in it for letsencrypt
4. `docker-compose -f docker-compose.certbot.yml run --rm certbot`
5. `docker-compose -f docker-compose.certbot.yml down`
6. `docker run --entrypoint htpasswd registry:2 -Bbn testuser testpassword > auth/htpasswd`
7. `docker-compose up -d`


## Certificates renewal
`docker-compose -f docker-compose.certbot.yml run --rm certbot renew`
