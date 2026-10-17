# EC2 System Monitoring Script

## Project Overview

A Bash-based monitoring script developed for an Ubuntu Amazon EC2 instance. It collects basic system information and displays it in a clearly formatted report.

## Features

- Displays the current date and time.
- Displays the EC2 hostname.
- Reports CPU usage.
- Displays memory usage.
- Reports disk usage.
- Lists currently running system services.
- Saves monitoring output to a log file.
- Supports daily automated execution using cron.

## Project Structure

```text
task1/
├── README.md
└── monitoring/
    ├── monitor.sh
    └── monitor_logs.txt
```

## Requirements

- Ubuntu Linux
- Bash shell
- `top`, `free`, `df`, and `systemctl`
- Git (for version control)
- Cron (for scheduling)

## How to Run

Navigate to the project directory:

```bash
cd ~/shell-assignment
```

Make the script executable:

```bash
chmod +x monitoring/monitor.sh
```

Run the monitoring report:

```bash
./monitoring/monitor.sh
```

Save the report to the log file, replacing its previous contents:

```bash
./monitoring/monitor.sh > monitoring/monitor_logs.txt 2>&1
```

To append a new report instead, use:

```bash
./monitoring/monitor.sh >> monitoring/monitor_logs.txt 2>&1
```

## Automated Execution

The script is scheduled to run daily at 9:00 AM using cron.

Cron configuration:

```cron
0 9 * * * /home/ubuntu/shell-assignment/monitoring/monitor.sh >> /home/ubuntu/shell-assignment/monitoring/monitor_logs.txt 2>&1
```

View scheduled tasks:

```bash
crontab -l
```

The scheduled time follows the EC2 instance's configured timezone.

## Version Control

The project is maintained using Git and hosted on GitHub.

Repository: https://github.com/nihal-ayb/task1

## Author

Nihal Muhammed Ayoob
