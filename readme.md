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

## Supporting
- Flightradar 24
- Adsbexchange

## Will be supporting
- Radarbox
- Flightaware
- Planefinder

## Missing?
please create an issue and I will see what I can do.

## Credits
Not everything I thought of myself, some of the stuff I got inspired by:
- https://github.com/mikenye