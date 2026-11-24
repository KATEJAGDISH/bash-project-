# 🐧 Bash Log Analysis & Automation

### Automated Log Monitoring | Error Detection | Bash Scripting

<p align="center">
  <img src="https://img.shields.io/badge/Bash-Scripting-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white" />
  <img src="https://img.shields.io/badge/Linux-Commands-FCC624?style=for-the-badge&logo=linux&logoColor=black" />
  <img src="https://img.shields.io/badge/macOS-Supported-000000?style=for-the-badge&logo=apple&logoColor=white" />
  <img src="https://img.shields.io/badge/Git-Version_Control-F05032?style=for-the-badge&logo=git&logoColor=white" />
</p>

<p align="center">
  <b>A practical Bash automation project that simplifies server log analysis, detects important log patterns, and generates reports automatically.</b>
</p>

---

## 📌 Table of Contents

- [Overview](#-project-overview)
- [Features](#-key-features)
- [Project Structure](#-project-structure)
- [Technologies](#-technologies-used)
- [How It Works](#-how-it-works)
- [Getting Started](#-getting-started)
- [Alert Conditions](#-alert-conditions)
- [Generated Report](#-generated-report)
- [Learning Outcomes](#-learning-outcomes)
- [Future Improvements](#-future-improvements)
- [Author](#-author)

---

## 📖 Project Overview

**Bash Log Analysis & Automation** is a shell scripting project designed to automate the process of monitoring and analysing server log files.

Manually checking multiple log files can be time-consuming. This project simplifies that process by using a Bash script to:

- Find log files modified within the last 24 hours.
- Search for important log patterns.
- Count occurrences of each pattern.
- Display alerts when predefined thresholds are exceeded.
- Generate a structured text report.

The main goal is to practise Linux fundamentals, Bash scripting, and real-world DevOps automation concepts.

## ✨ Key Features

| Feature | Description |
|---|---|
| 🔍 Automated Log Scanning | Finds `.log` files modified within the last 24 hours |
| 🚨 Pattern Detection | Searches for ERROR, FATAL, CRITICAL, WARNING, and INFO |
| 📊 Error Counting | Counts matching entries in each log file |
| ⚠️ Alert System | Displays alerts when occurrences exceed 10 |
| ✅ Status Monitoring | Displays a safe status when occurrences are below 5 |
| 📄 Report Generation | Saves analysis results in a text report |
| ⚙️ Automation | Reduces repetitive manual log-checking tasks |

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
| 🐚 Bash | Shell scripting and automation |
| 🐧 Linux / macOS | Command-line environment |
| `find` | Locate recently modified log files |
| `grep` | Search log patterns |
| `printf` | Formatted terminal and file output |
| `chmod` | Manage script execution permissions |
| Git | Version control |
| GitHub | Repository hosting and branch management |

## 🔄 How It Works

The project follows a simple log analysis workflow:

```text
       START
         |
         ▼
  Find Recent Log Files
         |
         ▼
  Read Each Log File
         |
         ▼
 Search Important Patterns
         |
         ▼
 Count Pattern Occurrences
         |
         ▼
 Check Alert Thresholds
         |
         ▼
 Display Status / Alerts
         |
         ▼
 Generate Analysis Report
         |
         ▼
        END
```

### 🔎 Log Patterns Monitored

| Pattern | Description |
|---|---|
| `ERROR` | Application errors |
| `FATAL` | Critical application failures |
| `CRITICAL` | Serious system issues |
| `WARNING` | Potential problems |
| `INFO` | Informational messages |

## 🚀 Getting Started

Follow these steps to run the project on your local machine.

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/KATEJAGDISH/bash-project-.git
```

### 2️⃣ Navigate to the Project

```bash
cd bash-project-
```

### 3️⃣ Give Execution Permission

```bash
chmod +x automation/analyse-log.sh
```

### 4️⃣ Configure Directory Paths

Open `automation/analyse-log.sh` and update the following variables according to your local project location:

```bash
LOG_DIR="/your/project/path/log"
REPORT_DIR="/your/project/path/report"
REPORT_FILE="$REPORT_DIR/log_analysis_report.txt"
```

### 5️⃣ Run the Script

```bash
./automation/analyse-log.sh
```

## 🚨 Alert Conditions

The script uses predefined thresholds to identify patterns that may require attention.

| Occurrence Count | Result |
|---|---|
| More than 10 | ⚠️ Action required |
| Fewer than 5 | ✅ No action needed |
| 5 to 10 | ℹ️ No threshold message |

*Note: These are project-defined thresholds for practising log monitoring, not universal production alerting rules.*

## 📄 Generated Report

All analysis results are saved in:

```text
report/log_analysis_report.txt
```

The report includes:

- Recently modified log files.
- Matching log entries for each pattern.
- Pattern-wise occurrence counts.
- Threshold-based analysis results.

## 🎯 Learning Outcomes

While developing this project, I gained practical experience with:

- Linux command-line operations.
- Bash scripting fundamentals.
- Variables and arrays.
- Conditional statements (`if`, `else`).
- Loops (`for`).
- File and directory handling.
- Log searching with `grep`.
- File searching with `find`.
- Output redirection (`>` and `>>`).
- Formatted output using `printf`.
- Git branching, commits, and GitHub.

## 🔮 Future Improvements

Some improvements planned for future versions:

- 📧 Automated email notifications.
- ⏰ Schedule analysis using Cron jobs.
- 🐍 Python-based advanced log analysis.
- 🌐 HTML report generation.
- 📡 Continuous real-time log monitoring.
- 📊 Dashboard for log analysis results.

---

## 👨‍💻 About the Developer

<p align="center">
  <b>Jagdish Kate</b><br/>
  MCA Student | Aspiring DevOps Engineer
</p>

<p align="center">
  <a href="https://github.com/KATEJAGDISH">
    <img src="https://img.shields.io/badge/GitHub-KATEJAGDISH-181717?style=for-the-badge&logo=github" />
  </a>
  <a href="https://www.linkedin.com/in/jagdish-kate/">
    <img src="https://img.shields.io/badge/LinkedIn-Jagdish_Kate-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white" />
  </a>
  <a href="https://www.instagram.com/jagdish___06/">
    <img src="https://img.shields.io/badge/Instagram-jagdish___06-E4405F?style=for-the-badge&logo=instagram&logoColor=white" />
  </a>
</p>

---

<p align="center">
  ⭐ If you find this project useful, consider giving it a star!
  <br/><br/>
  <b>Built with 🐧 Bash | Practising Linux | Learning DevOps</b>
</p>