# Recon Automation Script

## Overview

The **Recon Automation Script** is a streamlined tool designed for performing comprehensive reconnaissance on multiple domains. It automates various tasks such as subdomain enumeration, live host probing, directory brute-force attacks, hidden endpoint extraction, and vulnerability scanning.

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
   https://github.com/chaitanya-hack1O1/Reconn-Host.git
   cd Reconn-Host
   ```
Make the script executable:

```
chmod +x recon-script.sh

```
Ensure tools are installed and accessible from your path.
Usage
Prepare a file named domains.txt containing the list of domains you wish to analyze, with one domain per line.
Run the script:

```
./recon-script.sh

```
The output will be saved in a directory called recon-output.
Output Structure
recon-output/
subdomains.txt: List of discovered subdomains.
live.txt: List of verified live hosts.
ffuf/: Results of the directory brute-forcing for each live host.
js/: Hidden endpoints extracted from JavaScript files.
nuclei-results.txt: Results of the vulnerability scans.

Contributing:
Contributions are welcome! Please open an issue or submit a pull request for any feature requests or improvements.
ThankYou~
