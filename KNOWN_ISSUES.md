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

