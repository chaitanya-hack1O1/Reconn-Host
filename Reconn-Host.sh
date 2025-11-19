# -----------------------------
#  Bulk Recon Automation Script
# -----------------------------
#!/bin/bash
DOMAINS="domains.txt"
OUTPUT="recon-output"

mkdir -p $OUTPUT

echo "[+] Step 1: Subdomain Enumeration with Subfinder"
subfinder -dL $DOMAINS -o $OUTPUT/subdomains.txt

echo "[+] Step 2: Probing Live Hosts with httpx"
httpx -list $OUTPUT/subdomains.txt -o $OUTPUT/live.txt

echo "[+] Step 3: Directory Bruteforce on Live Hosts with FFUF"
mkdir -p $OUTPUT/ffuf
while read domain; do
    ffuf -u http://$domain/FUZZ \
        -w /usr/share/wordlists/dirb/common.txt \
        -o $OUTPUT/ffuf/$domain.json -mc 200,301,302
done < $OUTPUT/live.txt

echo "[+] Step 4: Extract Hidden Endpoints from JS (Gospider)"
mkdir -p $OUTPUT/js
gospider -S $DOMAINS -o $OUTPUT/js

echo "[+] Step 5: Vulnerability Scanning with Nuclei"
nuclei -l $OUTPUT/live.txt -o $OUTPUT/nuclei-results.txt

echo "[+] Recon Completed!"
echo "All results saved in: $OUTPUT/"