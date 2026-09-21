# 07 - Networking

## Goal

Inspect IP addresses, routes, listening ports, and basic network connectivity.

## Key commands

- `ip addr` / `ip a` shows network interfaces and IP addresses.
- `ip route` shows routing information.
- `ss -tulpn` shows listening TCP/UDP sockets and processes.
- `ping -c 4 HOST` tests reachability with four packets.
- `curl` makes HTTP requests.

## `ss -tulpn` flags

- `-t` TCP
- `-u` UDP
- `-l` listening
- `-p` process information
- `-n` numeric output without name resolution

Port 80 is the default HTTP port used by Nginx in this lab.


---

## Practice

### IP addresses and interfaces

![alt text](../screenshots/23.png)

<br>

### Routing table

![alt text](../screenshots/24.png)

<br>

### Listening TCP/UDP ports

![alt text](../screenshots/25.png)

<br>

### Connectivity tests

![alt text](../screenshots/26.png)

![alt text](../screenshots/27.png)

<br>

### HTTP requests

![alt text](../screenshots/28.png)