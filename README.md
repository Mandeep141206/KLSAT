# KLSAT — Kali Linux Security Assessment Toolkit

KLSAT (Kali Linux Security Assessment Toolkit) is a Bash-based cybersecurity toolkit designed to simplify and automate basic Linux security assessment and auditing tasks through an interactive command-line interface.

Instead of manually executing multiple Linux commands, KLSAT provides a centralized menu from which users can access different security assessment modules.

---

## Features

- System Information
- Network Information
- Network Discovery
- DNS Lookup
- Ping Host
- Traceroute
- Port Scanning
- Process Monitoring
- Log Analysis
- File Permission Scanning
- SUID File Detection
- SGID File Detection
- Hidden File Detection
- World-Writable File Detection
- File Hash Generation
- Security Report Generation
- Interactive Help Menu

---

## Objective

The main objective of KLSAT is to combine commonly used Linux security assessment and system auditing tasks into a single interactive toolkit.

The project helps users understand Linux security concepts, system information gathering, network reconnaissance, process monitoring, log analysis, file permissions, file integrity and basic security reporting.

---

## How It Works

KLSAT uses a modular Bash scripting architecture.

The general workflow is:

1. The user starts the main `toolkit.sh` script.
2. KLSAT displays an interactive menu.
3. The user selects a security assessment module.
4. The corresponding Bash module is executed.
5. Linux commands and security tools are used to collect information.
6. Results are displayed in the terminal.
7. Relevant assessment results can be stored for later analysis or reporting.
8. The user can return to the main menu and select another module.

---

## Modules

### 1. System Information

The System Information module collects basic information about the Linux system.

It can be used to inspect information such as:

- Operating system details
- Kernel information
- CPU information
- Memory information
- Disk and storage information
- Host/system information

This helps establish a basic understanding of the system being assessed.

---

### 2. Network Information

The Network Information module collects information about the system's network configuration.

It can be used to inspect:

- Network interfaces
- IP addresses
- Routing information
- Network configuration
- Connectivity information

This is useful during the initial stage of a security assessment.

---

### 3. Network Discovery

The Network Discovery functionality helps identify devices and hosts that may be reachable on an authorized network.

This can assist with understanding the network environment before performing further assessment.

---

### 4. DNS Lookup

The DNS Lookup module performs DNS-related queries to retrieve information associated with a domain or hostname.

It can help users understand how domain names resolve to network addresses.

---

### 5. Ping Host

The Ping Host module checks whether a specified host is reachable over the network.

It can help determine:

- Host availability
- Basic network connectivity
- Response time

---

### 6. Traceroute

The Traceroute module helps identify the network path between the local system and a destination host.

It can be useful for understanding:

- Network hops
- Routing paths
- Connectivity problems
- Approximate network topology

---

### 7. Port Scanner

The Port Scanner uses Nmap to identify open ports and associated services on an authorized target.

Open ports can indicate services that are listening for network connections.

Port scanning can help a security analyst:

- Identify exposed services
- Understand the attack surface
- Detect unnecessary open ports
- Perform basic network security assessment

**Only scan systems and networks for which you have authorization.**

---

### 8. Process Monitor

The Process Monitor module displays currently running processes on the Linux system.

It can help users identify:

- Running applications
- Process IDs
- Resource usage
- Active processes
- Unexpected processes

This can be useful when investigating system activity.

---

### 9. Log Analysis

The Log Analysis module helps inspect Linux system logs.

Logs can contain information about:

- Authentication events
- System errors
- Service activity
- Login attempts
- Other system events

Log analysis is an important part of security monitoring and incident investigation.

---

### 10. File Permission Scanner

The File Permission Scanner searches the filesystem for security-relevant file permissions.

The module checks for files such as:

- SUID files
- SGID files
- Hidden files
- World-writable files

These permissions are important during Linux security auditing because incorrectly configured permissions can create security risks.

---

### 11. Hash Generator

The Hash Generator creates a cryptographic hash of a selected file.

A file hash can be used as a fingerprint for the file.

It can help with:

- File integrity verification
- Detecting file changes
- Comparing files
- Basic digital forensics
- Security investigations

If the contents of a file change, its hash value will normally change as well.

---

### 12. Report Generator

The Report Generator collects assessment information and creates text-based security reports.

Reports can help organize the results of different assessment modules for later review and documentation.

---

### 13. Help Module

The Help Module provides information about the toolkit and its available functionality.

It helps users understand how to navigate and use KLSAT.

---

## Technologies & Tools Used

- Kali Linux — Security testing and Linux environment
- Bash Shell Scripting — Main programming/scripting language
- Nmap — Network and port scanning
- Linux Command-Line Utilities — System and security information gathering
- Git — Version control
- GitHub — Source code hosting and project management

---

## Project Architecture 

KLSAT follows a modular architecture.

The main `toolkit.sh` script acts as the central entry point and connects the user to the different modules.

```text
                    KLSAT
                      |
                 toolkit.sh
                      |
        +-------------+-------------+
        |             |             |
     System        Network       Security
     Modules       Modules        Modules
        |             |             |
    system.sh     network.sh     scan.sh
                   network_       permissions.sh
                   tools.sh       hash.sh
                                  logs.sh
                                  process.sh
                                  report.sh


## Project Structure

KLSAT/
│
├── modules/
│   ├── hash.sh
│   ├── help.sh
│   ├── logs.sh
│   ├── network.sh
│   ├── network_tools.sh
│   ├── permissions.sh
│   ├── process.sh
│   ├── report.sh
│   ├── scan.sh
│   └── system.sh
│
├── screenshots/
│   ├── dns lookup.png
│   ├── file permission scanner.png
│   ├── hash generator.png
│   ├── help menu.png
│   ├── log analysis.png
│   ├── network discovery.png
│   ├── ping host.png
│   ├── port scanner.png
│   ├── report generator.png
│   ├── running process 2.png
│   ├── system info 1.png
│   ├── system info 2.png
│   └── traceroute.png
│
├── .gitignore
├── README.md
├── test.txt
└── toolkit.sh


Installation

Clone the repository:

git clone https://github.com/Mandeep141206/KLSAT.git

Move into the project directory:

cd KLSAT

Make the main toolkit executable:

chmod +x toolkit.sh

Make the module scripts executable:

chmod +x modules/*.sh

How to Run

Start the toolkit using:

./toolkit.sh

An interactive menu will be displayed.

Example Workflow

A typical assessment workflow can be:

Start KLSAT
     |
     v
System Information
     |
     v
Network Information
     |
     v
Network Discovery
     |
     v
Port Scanning
     |
     v
Process Monitoring
     |
     v
Log Analysis
     |
     v
File Permission Analysis
     |
     v
File Hash Verification
     |
     v
Generate Report

Security Notice

KLSAT is intended for educational and authorized security assessment purposes only.

Only scan systems, networks and files that you own or have explicit permission to assess.

Do not use this toolkit against unauthorized systems or networks.

The author is not responsible for misuse or unauthorized use of this project.

Limitations

KLSAT is designed as a learning and basic security assessment toolkit.

It is not intended to replace professional vulnerability scanners, SIEM platforms, endpoint security solutions or enterprise security assessment tools.

The results produced by the toolkit should be interpreted by a security professional or knowledgeable user.

Future Improvements

Planned improvements include:

Advanced vulnerability assessment
CVE integration
Improved automated security reporting
PDF report generation
Enhanced log analysis
Additional network reconnaissance modules
More file security checks
Improved error handling
Additional security assessment modules
Web-based security dashboard
Improved report visualization

Learning Outcomes

This project helped develop practical knowledge of:

Linux system administration
Bash scripting
Linux file permissions
SUID and SGID concepts
Network reconnaissance
Port scanning
Nmap
Process monitoring
Linux log analysis
File integrity verification
Cryptographic hashing
Security auditing
Git and GitHub
Modular software design

Author

Mandeep Singh

B.Tech CSE Student | Cybersecurity Enthusiast

Interested in Cybersecurity, Ethical Hacking, Digital Forensics and Security Operations.



