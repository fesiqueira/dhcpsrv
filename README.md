# dhcpsrv

Easily spin a local DHCP server

## Usage:
Run:
```sh
$ docker-compose up
```

Check if it is working:
```sh
# I only managed to find the local DHCP server if not connected to any other DHCP server
$ sudo nmap --script broadcast-dhcp-discover
```
