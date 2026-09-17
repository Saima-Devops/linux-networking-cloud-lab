# Linux, Networking & Cloud Infrastructure Lab

A hands-on internship lab covering Linux administration, networking, SSH, firewall configuration, AWS EC2, systemd services, and Nginx.

## Objective

Built and documented a Linux server on AWS EC2 while practicing:

- Linux CLI and filesystem navigation
- Files, permissions, users, and groups
- Process management
- systemd services and logs
- SSH access and SSH keys
- IP addressing, ports, DNS, and connectivity testing
- UFW host firewall
- AWS EC2 Security Groups and CIDR
- Nginx service deployment
- Git/GitHub documentation

> **Scope:** This phase does not build a custom website or application. Nginx's default welcome page was sufficient to demonstrate service deployment and connectivity.

## Lab architecture

```text
                    Internet
                       |
                       v
              AWS EC2 Security Group
              TCP 22: my_IP /32
              TCP 80: 0.0.0.0/0
                       |
                       v
                Ubuntu EC2 Server
                       |
                       v
                    UFW
                 TCP 22 / 80
                       |
                       v
                    Nginx
                       |
                       v
             Default Nginx Page
```

## Environment

| Component | Lab choice |
|---|---|
| Cloud | AWS EC2 |
| Operating system | Ubuntu Server LTS |
| Remote access | SSH |
| Host firewall | UFW |
| Web service | Nginx |
| Cloud firewall | EC2 Security Group |
| Documentation | Markdown |
| Version control | Git/GitHub |

## Repository structure

```text
linux-networking-cloud-lab/
├── README.md
├── .gitignore
├── 01-linux-basics/
│   ├── README.md
│   └── commands.sh
├── 02-files-permissions/
│   ├── README.md
│   └── commands.sh
├── 03-users-groups/
│   ├── README.md
│   └── commands.sh
├── 04-process-management/
│   ├── README.md
│   └── commands.sh
├── 05-services-systemd/
│   ├── README.md
│   └── commands.sh
├── 06-ssh/
│   ├── README.md
│   └── commands.sh
├── 07-networking/
│   ├── README.md
│   └── commands.sh
├── 08-dns/
│   ├── README.md
│   └── commands.sh
├── 09-firewall/
│   ├── README.md
│   └── commands.sh
├── 10-aws-security-groups/
│   └── README.md
├── 11-nginx-service/
│   ├── README.md
│   └── commands.sh
└── screenshots/
```

## Lab workflow

1. Created an Ubuntu EC2 instance.
2. Configured the EC2 Security Group.
3. Connected using SSH.
4. Practiced Linux commands and filesystem navigation.
5. Practiced permissions, users, and groups.
6. Inspected and manage processes.
7. Managed services with systemd.
8. Configured and test SSH.
9. Inspected IP addresses, routes, ports, and connectivity.
10. Practiced DNS lookups.
11. Configured UFW without locking yourself out.
12. Installed Nginx.
13. Verified Nginx is listening on port 80.
14. Tested locally with `curl`.
15. Tested remotely using the EC2 public IP.
16. Verified the default Nginx welcome page in a browser.
17. Documented evidence and pushed the repository to GitHub.

## Important security rules

- Never commit `.pem` private keys.
- Never commit AWS access keys, passwords, tokens, or other secrets.
- Allow SSH in the Security Group before connecting.
- Before enabling UFW remotely, allow SSH:
  `sudo ufw allow 22/tcp`
- For the lab, restrict SSH to your public IP using `/32`.
- HTTP port 80 can be public when testing the default Nginx page.
- Do not run destructive commands against system directories.
- Do not stop SSH remotely unless you have a recovery/reconnection plan.

## Useful verification commands

```bash
whoami
pwd
ls -la
ip addr
ip route
sudo ss -tulpn
sudo systemctl status ssh
sudo systemctl status nginx
sudo ufw status verbose
curl -I http://localhost
```

## Evidence / screenshots

Put screenshots in `screenshots/` and make sure they demonstrate your own work. Useful evidence includes:

- Successful SSH connection
- `pwd` / `ls -la`
- Permissions with `ls -l`
- User/group information
- Process/PID output
- `systemctl status nginx`
- `ss -tulpn` showing port 80
- `ufw status`
- EC2 Security Group inbound rules
- Browser showing the default Nginx welcome page

Do not include private keys or secrets in screenshots.

## Completion checklist

- [✔️] EC2 Ubuntu server created
- [✔️] SSH access verified
- [✔️] Linux CLI practice completed
- [✔️] File and permission practice completed
- [✔️] User/group practice completed
- [✔️] PID/process practice completed
- [✔️] systemd/service practice completed
- [✔️] SSH concepts and key permissions understood
- [✔️] IP/routing/port commands tested
- [✔️] DNS lookup tested
- [✔️] UFW configured
- [✔️] AWS Security Group configured
- [✔️] Nginx installed
- [✔️] Nginx enabled and running
- [✔️] Port 80 verified
- [✔️] Default Nginx welcome page tested
- [✔️] Evidence added
- [✔️] Repository pushed to GitHub

## Read all Notes in Detail on Notion

https://observant-quarter-d86.notion.site/DevOps-Clouds-My-Learning-Journey-7175327a3d6a43168e56f8c965000c2d

---

### Submitted by:
**Name** - Saima Usman \
**Job Role** - Codomax Digital Solutions Intern \
**Module** - Linux, Networking & Cloud Infrastructure 