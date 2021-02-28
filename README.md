Requirements
------------

  - [Docker](https://www.docker.com)
    - [Docker Compose](https://docs.docker.com/compose/)
  - [GNU Make](https://www.gnu.org/software/make/) (optional)

Installation
------------
  
  1. Clone the repository

         git clone https://github.com/PHLAK/valheim-compose.git

  2. Initialize the configuration files

          make init

      or manually

         cp --verbose .skelleton/config/*.env config/
         cp --verbose .skelleton/.env .

  3. Set the environment variables in `.env`

  4. Set the application-specific environment variables by editing the files found in the `config` directory

  5. Run `docker-compose config` to validate and confirm your configuration

  6. Run `docker-compose up -d` to start the containers

Updating Containers
-------------------

This project includes [Watchtower](https://containrrr.dev/watchtower/) that will
periodically check for new images on a schedule and update containers if found.

Watchtower configuration is controlled through the environment variables set in
the `config/watchtower.env` file. Check out the [Watchtower documentation](https://containrrr.dev/watchtower/)
(specifically the [Arguments](https://containrrr.dev/watchtower/arguments/) page)
for more information on the available envionment variables and what they do.

To fetch updated images and update the running containers run

    make update

or manually

    docker-compose pull && docker-compose up -d
