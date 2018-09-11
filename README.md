# luzifer-docker / gmail-roundcube

Roundcube Mail with CardDAV and Enigma plugins configured for GMail access in a Docker container

## Usage

```bash
## Build container (optional)
$ docker build -t luzifer/gmail-roundcube .

## Execute gmail-roundcube
$ docker run --rm -ti -v $(pwd):/var/www/db -p 80:80 luzifer/gmail-roundcube
```
