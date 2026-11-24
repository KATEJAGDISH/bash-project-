# 🐧 Bash Log Analysis & Automation

**A Shell Scripting Project for Automated Log Monitoring and Error Detection**

![Bash](https://img.shields.io/badge/Shell-Bash-green?logo=gnubash)
![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Linux-blue)
![Status](https://img.shields.io/badge/Status-Completed-success)

## 📌 Project Overview

The **Bash Log Analysis & Automation** project automates the process of monitoring and analysing server log files using Bash scripting.

Instead of manually checking multiple log files, this script scans recently updated `.log` files, identifies important log patterns, counts occurrences, and generates an analysis report.

It also displays alerts when a particular log pattern exceeds a defined threshold.

## ✨ Features

- 🔍 **Automated Log Scanning** – Finds `.log` files updated within the last 24 hours.
- 🚨 **Error Detection** – Searches for ERROR, FATAL, CRITICAL, WARNING, and INFO patterns.
- 📊 **Error Counting** – Counts occurrences of each pattern in every log file.
- ⚠️ **Alert System** – Displays an alert when a pattern occurs more than 10 times.
- ✅ **Status Monitoring** – Displays a safe status when a pattern occurs fewer than 5 times.
- 📄 **Report Generation** – Saves analysis results in a text report.
- ⚙️ **Automation** – Reduces repetitive manual log-checking work.

## 📁 Project Structure

```text
Bash_project/
│
├── automation/
│   └── analyse-log.sh
│
├── log/
│   ├── application.log
│   ├── celery.log
│   ├── dashboard.log
│   ├── demo.log
│   ├── orchestrator.log
│   ├── system.log
│   └── port_forward.log
│
├── report/
│   └── log_analysis_report.txt
│
└── README.md
```

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Bash | Automation scripting |
| Linux / macOS | Command-line environment |
| grep | Pattern searching |
| find | Finding recently modified log files |
| printf | Formatted output |
| chmod | Script execution permissions |
| Git & GitHub | Version control |

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/KATEJAGDISH/bash-project-.git
```

### 2. Navigate into the project

```bash
cd bash-project-
```

### 3. Give execution permission

```bash
chmod +x automation/analyse-log.sh
```

### 4. Configure the log and report paths

Open `automation/analyse-log.sh` and update `LOG_DIR` and `REPORT_FILE` to match your local project location.

### 5. Run the script

```bash
./automation/analyse-log.sh
```

## 📊 Log Analysis Logic

The script checks five log patterns:

| Pattern | Description |
|---|---|
| ERROR | Application errors |
| FATAL | Critical application failures |
| CRITICAL | Serious system issues |
| WARNING | Potential problems |
| INFO | Informational messages |

### Alert Conditions

| Condition | Action |
|---|---|
| Count greater than 10 | ⚠️ Display action-required alert |
| Count fewer than 5 | ✅ Display safe status |
| Count between 5 and 10 inclusive | No threshold message |

## 📄 Generated Report

The analysis results are saved in:

```text
report/log_analysis_report.txt
```

The report contains:
- Recently modified log files
- Matching log entries
- Pattern-wise occurrence counts
- Analysis results

## 🎯 Learning Outcomes

Through this project, I practised:

- Linux command-line operations
- Bash scripting fundamentals
- Variables and arrays
- Conditional statements (`if`, `else`)
- Loops (`for`)
- File and directory handling
- Log filtering using `grep`
- File searching using `find`
- Output redirection (`>` and `>>`)
- Automating repetitive administrative tasks
- Git branching and GitHub version control

## 🔮 Future Improvements

- Add automated email alerts.
- Schedule log analysis using Cron jobs.
- Add Python-based log analysis.
- Generate HTML reports.
- Monitor logs continuously in real time.

## 👨‍💻 Author

**Jagdish Kate**

MCA Student | Aspiring DevOps Engineer

- **GitHub:** [KATEJAGDISH](https://github.com/KATEJAGDISH)
- **LinkedIn:** [Jagdish Kate](https://www.linkedin.com/in/jagdish-kate/)
- **Instagram:** [@jagdish___06](https://www.instagram.com/jagdish___06/)

---

⭐ If you find this project useful, consider giving it a star!

**Built to practise Bash scripting, Linux fundamentals, and DevOps automation.**
