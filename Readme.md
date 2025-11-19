# Bulk Recon Automation Script

## Overview

The **Bulk Recon Automation Script** is a streamlined tool designed for performing comprehensive reconnaissance on multiple domains. It automates various tasks such as subdomain enumeration, live host probing, directory brute-force attacks, hidden endpoint extraction, and vulnerability scanning.

## Features

- **Subdomain Enumeration**: Use Subfinder to discover subdomains efficiently.
- **Live Host Probing**: Verify the status of discovered subdomains with httpx.
- **Directory Brute-Force**: Implement FFUF to identify accessible directories on live hosts.
- **Hidden Endpoint Extraction**: Employ Gospider to detect hidden endpoints within JavaScript files.
- **Vulnerability Scanning**: Run Nuclei to find potential vulnerabilities in live hosts.

## Requirements

Before running the script, ensure you have the following tools installed:

1. [Subfinder](https://github.com/projectdiscovery/subfinder)
2. [httpx](https://github.com/projectdiscovery/httpx)
3. [FFUF](https://github.com/ffuf/ffuf)
4. [Gospider](https://github.com/jaeles-project/gospider)
5. [Nuclei](https://github.com/projectdiscovery/nuclei)

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/bulk-recon-automation.git
   cd bulk-recon-automation
