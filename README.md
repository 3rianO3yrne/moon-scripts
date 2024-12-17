# moon-scripts
> WIP
## Description

Python scripts for interacting with the [Horizons API](https://ssd.jpl.nasa.gov/horizons/)

The scripts here can be run either in a docker container or as a python script.

The docker container contains a FastApi server to interact with the [Horizons API](https://ssd.jpl.nasa.gov/horizons/) for ease of use.

## Technology
* Python
* Docker
* FastApi

### Requirements
* Docker Desktop
* Connection to the internet

### Local Usage via docker (preferred):
* clone repo 
* run `docker compose up` to install dependencies and start the server
* visit the server: [http://127.0.0.1:8000/](http://127.0.0.1:8000/)
* TODO: add endpoints

### Scripts (deprecated)
* pip3 install requests
* python3 run_horizons.py


