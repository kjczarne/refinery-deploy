# Refinery Deploy

This is a small repo containing a few tools that should let you deploy Refinery quicker.

## Deploy CouchDB on Docker

1. Install Docker from DockerHub
2. Clone this repo
3. `cd` into this repo
4. Make sure you've set the `REFINERY_USER`, `REFINERY_PASSWORD`, `REFINERY_SECRET` environment variables.
5. Go into `config/cred/local.ini` and replace the `admin=admin` with your own account name consistent with the value of `REFINERY_USER`.
6. Go into `refinery_configuration/.refinery.yaml` and name your database and change any extra configuration you need. Beware that you will need to bind-mount your iBooks database directory if you want to use that functionality.
7. Run `docker-compose up`.

Congratulations, you should now have a running CouchDB instance which saves its data into the cloned repo under `config/data`.

## Deploy Refinery Server on Docker

If you used Docker Compose, you don't have to do anything else! The CouchDB is accessible on port 5894 and Refinery on port 42069. You're free to use the server REST API now.