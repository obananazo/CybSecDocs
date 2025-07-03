# Commands

## Service scanning

`nmap -sV -sC -p- 10.129.42.253`

- `-sV`: service & version
- `-sC`: built-in scripts *(possibly get more info)*
- `-p[port]`: port / port-range *(here: all 65,535 TCP ports)*

## Banner grabbing

`nc -nv 10.129.42.253 21`

- `-n`: Don't do DNS/service lookups
- `-v`: verbose

or

`nmap -sV --script=banner -p21 10.10.10.0/24` (automated (cleaner output?))

---

## FTP

File Transfer Protocol.

`ftp -p 10.129.42.253`

- `-p`: public or something?

---

## SMB (Server Message Block)

Windows network sharing / public folder.

### Recon

`nmap --script smb-os-discovery.nse -p445 10.10.10.40`

### List

`smbclient -L \\\\10.129.42.253` (`-N` to surpress password prompt)

### Connect

`smbclient -U bob \\\\10.129.196.179\\users`

---

## Web enumeration

Webservers are serving content from their directories.
Check for possible files or directories to gain more insight.

> ℹ️ Consider checking *robots.txt* or SSL/TLS certificates

Discover file directories on web server.

Grab banner:

`curl -IL https://www.inlanefreight.com`

or

`whatweb --no-errors 10.10.10.0/24`

### Tools

**Gobuster**: `gobuster dir -u http://10.10.10.121/ -w [...]/SecLists/Discovery/Web-Content/common.txt`

*(DNS)*: `gobuster dns -d inlanefreight.com -w <wordlist>`

**FFuf**: `ffuf -u http://94.237.62.184:42203/FUZZ -w <wordlist>`

> ℹ️ Source code can be worth a look too (dive deeper with JS deobfuscation)
