# Known Issues

1. If you are seeing this error
```
Saving debug log to /var/log/letsencrypt/letsencrypt.log
Plugins selected: Authenticator webroot, Installer None
Obtaining a new certificate
Performing the following challenges:
http-01 challenge for domail.com
Using the webroot path /var/www/letsencrypt for all unmatched domains.
Waiting for verification...
Cleaning up challenges
Failed authorization procedure. domain.com (http-01): urn:ietf:params:acme:error:unauthorized :: The client lacks sufficient authorization :: Invalid response from http://domain.com/.well-known/acme-challenge/xgbcOSreyeC7Nb5JBlJxt1XQTNUIdZ2L3zhvqvToIWI: "<!DOCTYPE html>
<html lang="ru-RU" class="no-js">
<head>
        <meta charset="UTF-8">

        <link rel="profile" href="http://gmpg.or"

IMPORTANT NOTES:
 - The following errors were reported by the server:

   Domain: domain.com
   Type:   unauthorized
   Detail: Invalid response from
   http://domain.com/.well-known/acme-challenge/xgbcOSreyeC7Nb5JBlJxt1XQTNUIdZ2L3zhvqvToIWI:
   "<!DOCTYPE html>
   <html lang="ru-RU" class="no-js">
   <head>
           <meta charset="UTF-8">

           <link rel="profile" href="http://gmpg.or"

   To fix these errors, please make sure that your domain name was
   entered correctly and the DNS A/AAAA record(s) for that domain
   contain(s) the right IP address
```

Solution: delete `AAAA (IPv6)` record (https://community.letsencrypt.org/t/solved-the-client-lacks-sufficient-authorization-404-not-found/50894/11)

2. If you are seeing this error
```
Saving debug log to /var/log/letsencrypt/letsencrypt.log

-------------------------------------------------------------------------------
Processing /etc/letsencrypt/renewal/registry.kengu24.ru.conf
-------------------------------------------------------------------------------
Cert is due for renewal, auto-renewing...
Plugins selected: Authenticator webroot, Installer None
Renewing an existing certificate
Performing the following challenges:
http-01 challenge for registry.kengu24.ru
Waiting for verification...
Cleaning up challenges
Attempting to renew cert (registry.kengu24.ru) from /etc/letsencrypt/renewal/registry.kengu24.ru.conf produced an unexpected error: Failed authorization procedure. registry.kengu24.ru (http-01): urn:acme:
error:unauthorized :: The client lacks sufficient authorization :: Invalid response from http://registry.kengu24.ru/.well-known/acme-challenge/bz5q8lDtqTK6Pzf1jyAWtg5DzGxc12P0p8ZpsmIRVqY: q%!(EXTRA string
=<html>
<head><title>400 The plain HTTP request was sent to HTTPS port</title></head>
<body bgcolor="white">
<center><h1>400 B). Skipping.
All renewal attempts failed. The following certs could not be renewed:
  /etc/letsencrypt/live/registry.kengu24.ru/fullchain.pem (failure)

-------------------------------------------------------------------------------

All renewal attempts failed. The following certs could not be renewed:
  /etc/letsencrypt/live/registry.kengu24.ru/fullchain.pem (failure)
-------------------------------------------------------------------------------
1 renew failure(s), 0 parse failure(s)

IMPORTANT NOTES:
 - The following errors were reported by the server:

   Domain: registry.kengu24.ru
   Type:   unauthorized
   Detail: Invalid response from
   http://registry.kengu24.ru/.well-known/acme-challenge/bz5q8lDtqTK6Pzf1jyAWtg5DzGxc12P0p8ZpsmIRVqY:
   q%!(EXTRA string=<html>
   <head><title>400 The plain HTTP request was sent to HTTPS
   port</title></head>
   <body bgcolor="white">
   <center><h1>400 B)

   To fix these errors, please make sure that your domain name was
   entered correctly and the DNS A/AAAA record(s) for that domain
   contain(s) the right IP address.
```

Solution: create separate config for HTTP and make redirect to HTTPS
