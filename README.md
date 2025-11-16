# linux-shell-assignment-02

## Project Overview

This repository contains the practical implementation files for the **Computer Science Fundamentals & Career Pathways** course assignment on Linux Basics and Open-Source Tools.

The project demonstrates proficiency in setting up a Linux environment, executing core command-line functions, and automating tasks using shell scripting. It utilizes Kali (installed via **VirtualBox**) and involves developing three essential shell automation scripts.

## Scripts Description

This repository contains the following three functional shell scripts:

### 1. `backup.sh`
This script performs a recursive, timestamped backup of a specified source directory to a defined backup location. It uses the cp -rp command to ensure that file permissions and modification times are preserved.

### 2. `sys_monitor.sh`
This script is designed for long-term performance logging, essential for monitoring resource-intensive tasks like model training. It captures the system's CPU idle percentage and memory usage at regular intervals and logs the data to a CSV file.

### 3. `automated_download.sh`
This script automates the downloading of a file from the internet.
It uses the "wget" or "curl" command to fetch a file from a specified URL and saves it into a predefined local directory.

**Before running any script, you must grant it executable permissions:**
```bash
chmod +x *.sh
