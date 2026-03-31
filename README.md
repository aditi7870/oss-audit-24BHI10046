# Open Source Audit Project

## Student Details

* **Name:** Aditi
* **Roll Number:** 24BHI10046
* **Course:** Open Source Software
* **Project Title:** The Open Source Audit
* **Chosen Software:** Git


## Project Overview

This project is a structured audit of an open-source software (**Git**) along with implementation of Linux shell scripts.

The objective is to:

* Understand open-source philosophy
* Analyze software in a Linux environment
* Demonstrate automation using Bash scripting


## Environment Setup

### 1. Operating System

* Ubuntu Linux (Recommended)
* OR any Linux distribution (Debian / Fedora / Kali)

### 2. Verify System

```bash
uname -a
```

---

## Dependency Installation

### Step 1: Update System

```bash
sudo apt update
```

### Step 2: Install Git

```bash
sudo apt install git -y
```

### Step 3: Install Required Tools

```bash
sudo apt install coreutils grep awk -y
```

---

## Project Structure

```
oss-audit-24BHI10046/
│
├── script1.sh
├── script2.sh
├── script3.sh
├── script4.sh
├── script5.sh
└── README.md
```

---

## Scripts Description

### Script 1: System Identity Report

* Displays:

  * Kernel version
  * Logged-in user
  * System uptime
  * Date & Linux distribution
* Concepts used: variables, system commands, echo

---

### Script 2: FOSS Package Inspector

* Checks if Git is installed
* Displays package details (version, description)
* Uses case statement for open-source philosophy
* Concepts used: if-else, case, grep

---

### Script 3: Disk and Permission Auditor

* Scans system directories:

  * `/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`
* Displays:

  * Permissions
  * Ownership
  * Directory size
* Concepts used: loops, awk, du


### Script 4: Log File Analyzer

* Reads log file line by line
* Counts occurrences of a keyword (default: "error")
* Concepts used:

  * while loop
  * conditional statements
  * command-line arguments


### Script 5: Open Source Manifesto Generator

* Takes user input interactively
* Generates a personalized open-source statement
* Saves output in a `.txt` file
* Concepts used:

  * read input
  * file handling
  * string formatting


## How to Run the Project

### Step 1: Clone Repository

```bash
git clone https://github.com/aditi7870/oss-audit-24BHI10046.git
cd oss-audit-24BHI10046
```


### Step 2: Give Permission

```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```



### Step 3: Execute Scripts

#### Run Script 1

```bash
./script1.sh
```

#### Run Script 2

```bash
./script2.sh
```

#### Run Script 3

```bash
./script3.sh
```

#### Run Script 4

```bash
./script4.sh /var/log/syslog error
```

#### Run Script 5

```bash
./script5.sh
```


## Configuration Notes

* Scripts must be run in Linux terminal
* Some commands may require `sudo`
* Log file paths may vary:

  * Ubuntu → `/var/log/syslog`
  * CentOS → `/var/log/messages`



## Expected Output

* All scripts display structured output in terminal
* Script 5 generates:

  ```
  manifesto.txt
  ```



## Testing

* Tested on Ubuntu Linux
* All scripts are executable via command line
* No GUI dependency required


## Important Notes for Evaluator

* Repository is public and accessible
* All scripts are included and working
* Instructions assume no prior knowledge
* Project follows command-line execution requirement


## Conclusion

This project demonstrates both conceptual and practical understanding of open-source systems using Git and Linux shell scripting. It highlights the importance of collaboration, transparency, and automation in modern software development.

