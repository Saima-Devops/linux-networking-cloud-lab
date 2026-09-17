# 05 - Services and systemd

## Goal

Learn how Linux services are managed with `systemctl` and how logs can be inspected with `journalctl`.

## Common systemctl operations

```bash
sudo systemctl status SERVICE
sudo systemctl start SERVICE
sudo systemctl stop SERVICE
sudo systemctl restart SERVICE
sudo systemctl enable SERVICE
sudo systemctl enable --now SERVICE
```

`--now` starts the service immediately when enabling it.

## Logs

```bash
sudo journalctl
sudo journalctl -f
sudo journalctl -u SERVICE
sudo journalctl -u SERVICE --since "1 hour ago"
```

- `-f` follows new log entries.
- `-u` selects a systemd unit.
- `--since` filters by time.

## Safety

Do not stop SSH on a remote EC2 server unless you have a recovery plan. Losing the SSH service can disconnect you.
