# oss-audit-24BCE10392
# The Open Source Audit — MySQL
### Open Source Software (OSS) Capstone Project
**Course:** Open Source Software | VITyarthi
**Student Name:** Eshaani Sharma
**Roll Number:** 24BCE10392
**Chosen Software:** MySQL
**Slot:** D11
---

## >> About This Project

This repository is the submission for the **Open Source Audit** capstone project. The project involves a structured audit of **MySQL** — one of the most widely used open-source tools in the world — covering its origin story, license, Linux footprint, FOSS ecosystem, and a comparison with proprietary alternatives.

The repository contains **five shell scripts** that demonstrate practical Linux and bash scripting skills, each linked to a concept of the course.

---

## >> Repository Structure

```
oss-audit-[rollnumber]/
│
├── script1_system_identity.sh       # System Identity Report
├── script2_package_inspector.sh     # FOSS Package Inspector
├── script3_auditor.sh  # Disk and Permission Auditor
├── script4_log_analyzer.sh          # Log File Analyzer
├── script5_manifesto_generator.sh   # Open Source Manifesto Generator
│
└── README.md                        
```

---

## System Administration Scripts

This repository contains four Bash scripts designed to inspect, audit, and analyze MySQL within a Linux environment. 

### Dependencies & Prerequisites
* **Operating System:** Linux-based OS (Ubuntu, Debian, CentOS, RHEL). *(Note: Script 2 uses `rpm`, tailored for RHEL/CentOS/Fedora).*
* **Shell:** Bash.
* **Environment:** MySQL Server should be installed for Scripts 3 and 4 to yield meaningful results.
* **Permissions:** `sudo` privileges are required for auditing protected directories and logs.

All scripts are written in **bash** and designed for **Ubuntu / Debian Linux**.

The following tools must be available on your system (all pre-installed on Ubuntu):

| Tool | Purpose | Check if installed |
|------|---------|-------------------|
| `bash` | Run the scripts | `bash --version` |
| `git` | Target software for Scripts 1–3 | `git --version` |
| `dpkg` | Package inspection in Script 2 | `dpkg --version` |
| `apt-cache` | Package details in Script 2 | `apt-cache --version` |
| `lsb_release` | Distro name in Script 1 | `lsb_release -a` |
| `du`, `df` | Disk usage in Script 3 | built-in |
| `grep`, `awk`, `cut` | Text processing in Scripts 2–4 | built-in |

To install Git if it is not already present:
```bash
sudo apt update
sudo apt install git
```

---
### General Setup
Before running the scripts, navigate to their directory and make them executable:
```bash
chmod +x mysql_inspector.sh auditor.sh log_analyzer.sh manifesto.sh
```

---

### Step 3 — Run each script

**Script 1 — System Identity Report**
```bash
./mysql_inspector.sh
```
No arguments needed. Displays system information and license details.

---

**Script 2 — FOSS Package Inspector**
```bash
sudo ./auditor.sh
```
No arguments needed. Inspects the package by default.

---

**Script 3 — Disk and Permission Auditor**
```bash
./script3_disk_permission_auditor.sh
```
No arguments needed

---

**Script 4 — Log File Analyzer**
```bash
# Search for the default keyword "error":
sudo ./log_analyzer.sh /var/log/mysql/error.log

# Search for a custom keyword like "warning":
sudo ./log_analyzer.sh /var/log/mysql/error.log "warning"
```
- **Argument 1:** Path to a log file (e.g. `/var/log/dpkg.log`, `/var/log/syslog`)
- **Argument 2:** Keyword to search for (optional, defaults to `error`)

---

**Script 5 — Open Source Manifesto Generator**
```bash
./script5_manifesto_generator.sh
```
Interactive script. You will be prompted to answer 3 questions. Your manifesto will be saved as `manifesto_[yourusername].txt` in the current directory.

---

## Notes

- All scripts have been tested on **Ubuntu 22.04 LTS**
- Scripts must be run on a Linux system as they will not work on Windows CMD or PowerShell
---
