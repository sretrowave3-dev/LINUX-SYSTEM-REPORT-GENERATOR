# Linux System Report Generator

A lightweight command-line utility written in Bash that queries core system metrics from a Linux environment and compiles them into a structured, human-readable text report.

---

## Overview

The `system_report.sh` script automates the process of health checking and auditing a Linux system. Instead of manually invoking separate diagnostic tools, this script runs the required standard utilities sequentially and exports the findings directly into `system-report.txt`.

### Metrics Collected
* **Hostname:** The network name assigned to the machine.
* **Kernel Version:** The active Linux kernel release details.
* **Disk Usage:** Filesystem storage consumption and free space in human-readable units.
* **Memory Usage:** Physical RAM consumption, cached memory, and available swap space.
* **Top Running Processes:** A real-time snapshot of the highest resource-consuming processes sorted by CPU and memory activity.

---

## Requirements

* **Operating System:** Any Linux distribution (Ubuntu, Debian, Fedora, Arch, CentOS) or Windows Subsystem for Linux (WSL).
* **Shell:** Bash (`/bin/bash`).
* **Standard Utilities:** `coreutils`, `util-linux`, and `procps` (pre-installed by default on nearly all distributions).

---

## Installation & Setup

1. **Clone the repository:**
   ```bash
   git clone <YOUR_GITHUB_REPO_URL>
   cd <REPO_DIRECTORY_NAME>