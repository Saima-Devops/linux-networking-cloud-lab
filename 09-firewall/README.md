# 09 - UFW Firewall

## Goal

Configure the Ubuntu host firewall while keeping remote SSH access available.

## What is UFW?

UFW means **Uncomplicated Firewall**. It is a simpler command-line interface for managing firewall rules on Ubuntu.

## Critical EC2 rule

Before enabling UFW on a remote server, allow SSH:

```bash
sudo ufw allow 22/tcp
```

Then allow HTTP for Nginx:

```bash
sudo ufw allow 80/tcp
```

Finally:

```bash
sudo ufw enable
```

Check:

```bash
sudo ufw status verbose
```

## Lab architecture

```text
Internet
   |
AWS Security Group
   |
Ubuntu EC2
   |
UFW
   |
Nginx
```

The AWS Security Group and UFW are separate security layers.

## UFW and CIDR

UFW can also use network sources, but this lab mainly demonstrates CIDR through the AWS Security Group. The Security Group should restrict SSH to your public IP using `/32`.
