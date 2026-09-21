# 10 - AWS Security Groups

## Goal

Configure the EC2 instance's cloud-level inbound network access.

## Recommended lab inbound rules

| Type | Protocol | Port | Source |
|---|---|---:|---|
| SSH | TCP | 22 | `YOUR_PUBLIC_IP/32` |
| HTTP | TCP | 80 | `0.0.0.0/0` |

### Why `/32`?

CIDR notation describes an IP address and network prefix.

```text
203.0.113.25/32
```

A `/32` IPv4 prefix represents one IPv4 address. Replace the example with your own public IP.

### Why `0.0.0.0/0`?

`0.0.0.0/0` represents all IPv4 addresses. It is appropriate for public HTTP access when you need to open the default Nginx page from the Internet.

## Security principle

SSH administration should be restricted to your own public IP whenever practical. HTTP can be public for this demonstration because the service is intended to be reachable from a browser.

## Important

Do not publish your real IP in repository documentation if you do not want it exposed. In GitHub documentation, use placeholders such as `YOUR_PUBLIC_IP/32`.

![alt text](../screenshots/34.png)
