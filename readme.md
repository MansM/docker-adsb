# My ADSB feeder stack

## Environmentfile:
| Variable | Default | Description |
|----------|---------|-------------|
|`BEASTHOST`|| (Required) IP/Hostname of BEAST machine (readsb/dump1090)|
|`BEASTPORT`| 30005 | (Optional) Port of BEAST application |
| `MLAT` | | `yes` or `no` |
| `LAT` | | (Required for adsbexchange) Latitude |
| `LONG` | | (Required for adsbexchange) Longitude |
| `ALT` | | (Required for adsbexchange-mlat) Altitude of the antenna |
| `FR24KEY` || (Required for Flightradar24) Sharing Key |
| `UUID` || (Required for adsbexchange) static uuid |
| `SITENAME` || (Required for adsbexchange-mlat) Name of the location / or unique username |

## Example .env
```
FR24KEY=abcdef12345
BEASTHOST=127.0.0.1
MLAT=yes
LAT=42.12345
LONG=15.12345
ALT=19m
UUID=BD1466D5-269E-48D4-B5B1-463EA8E42BBA
SITENAME=mynickname_withasuffix
```

## Supporting
- Flightradar 24
- Adsbexchange (adsb and mlat)

## Will be supporting
- Radarbox
- Flightaware
- Planefinder

## Missing sites?
please create an issue and I will see what I can do.

## TODO
- MultiArch
- Kubernetes/helm charts
- Running the receiver also in a container

## Pull Requests
Yes! Please!

## Check if they are working
- [Flightradar24](https://www.flightradar24.com/account/data-sharing)
- [ADS-B Exchange](https://www.adsbexchange.com/myip/)

## Credits
Not everything I thought of myself, some of the stuff I got inspired by:
- https://github.com/mikenye