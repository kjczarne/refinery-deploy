# Refinery Deploy

This is a small repo containing a few tools that should let you deploy Refinery quicker.

## Deploy CouchDB on Docker

1. Install Docker from DockerHub
2. Clone this repo
3. `cd` into this repo
4. Make sure you've set the `REFINERY_USER` and `REFINERY_PASSWORD` environment variables.
5. Go into `config/cred/local.ini` and replace the `admin=admin` with your own account name.
6. Run `docker-compose up`

Congratulations, you should now have a running CouchDB instance which saves its data into the cloned repo under `config/data`.

## Deploy Refinery Server on Docker

Stay tuned, a Dockerfile for Refiney will shortly be available and you should be able to automatically roll out a server along with CouchDB with the above method in the near future.