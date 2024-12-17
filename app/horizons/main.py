import requests
from typing import Union


def run():
    print("run()")
    url = "https://ssd.jpl.nasa.gov/api/horizons.api"

    params = {
        "format": "text",
        "COMMAND": "301",
        "CENTER": "'coord'",
        "COORD_TYPE": "GEODETIC",
        "SITE_COORD": "'40.7128,-74.0060,0'",
        "MAKE_EPHEM": "YES",
        "TABLE_TYPE": "OBSERVER",
        "START_TIME": "2024-12-01",
        "STOP_TIME": "2024-12-31",
        "STEP_SIZE": "'6 h'",
        "QUANTITIES": "'25'",
    }

    response = requests.get(url, params=params)
    print(response.text)
