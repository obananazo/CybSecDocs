# First steps

The process is usually as follows:

1. Scan ports running on the target
   1. Is it a server? A database?
2. Check ports and services
   1. Any public exploits usable?
3. Extract data or bind to shell (reverse shell)
4. `PWNED!`

## Attack Flow

A professional workflow looks like:

< Flowchart here >

1. Planning and Preparation
2. Reconnaissance
3. Scanning and Enumeration
4. Vulnerability Assessment
5. Exploitation
6. Post-Exploitation
7. Reporting
8. Remediation and Follow-up

### Recon

The first step is to analyse thoroughly. Check API repsonses, open ports, service & version, OS, etc.

>ℹ️ It is recommended to note down as much as possible

|      Info      | Value |
|----------------|-------|
| IP             | [ ]   |
| Type           | [ ]   |
| OS             | [ ]   |
| Open ports     | [ ]   |
| Service        | [ ]   |
| Version        | [ ]   |
| Directories    | [ ]   |
| user(name(s))  | [ ]   |

Recon possible attack vectors by scanning the target for open services or ports (e.g. `nmap`).

```bash
USERNAME $ nmap 10.129.42.253

Starting Nmap 7.80 ( https://nmap.org ) at 2021-02-25 16:07 EST
Nmap scan report for 10.129.42.253
Host is up (0.11s latency).
Not shown: 995 closed ports
PORT    STATE SERVICE
21/tcp  open  ftp
22/tcp  open  ssh
80/tcp  open  http
139/tcp open  netbios-ssn
445/tcp open  microsoft-ds

Nmap done: 1 IP address (1 host up) scanned in 2.19 seconds
```

---

## Public exploits

In order to gain some access at all we need to find exploits that can be tried on the target. There's a lot of public exploits on the internet to look for.

Find them using:

- Google
- `searchsploit` (terminal)
- Metasploit

### Metasploit

Metasploit is a strong tool for automated exploit testing and setup.

```bash
USERNAME $ msfconsole
msf6 > search exploit eternalblue
msf6 > use exploit/windows/smb/ms17_010_psexec
msf6 > show options
msf6 > set <variable> <value>
msf6 > check
msf6 > exploit (or run)
```

---

## Reverse shell

After a successfull exploit we want to gain footing on the target by binding an opening to the shell (terminal).

> 📕 [Reverse shell cheatsheet](https://swisskyrepo.github.io/InternalAllTheThings/cheatsheets/shell-reverse-cheatsheet/)

`nc -lvnp <port>`

- `-l`: listen mode
- `-v`: verbose
- `-n`: disable DNS resolution, go straight to IP (faster)
- `-p`: port netcat is listening on, reverese connection should be same port

---

## Privilege Escalation

After initial access to a machine you are ususally a low-privileged user. This does not give complete access to the target.

We want to escalate our permissions using more exploits, specifically privilege escalation.

Automated privilege escalation scripts:

- [PrivEsc Checklists tools](https://book.hacktricks.wiki/en/index.html)

- [PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings)

Common PrivEsc scripts are [LinEnum](https://github.com/rebootuser/LinEnum.git) & [linuxprivchecker](https://github.com/sleventyeleven/linuxprivchecker) (Linux) and [Seatbelt](https://github.com/GhostPack/Seatbelt) & [JAWS](https://github.com/411Hall/JAWS)

> ⚠️ These scripts will run many commands known for identifying vulnerabilities and create a lot of "noise" that may trigger anti-virus software or security monitoring software that looks for these types of events. This may prevent the scripts from running or even trigger an alarm that the system has been compromised. In some instances, we may want to do a manual enumeration instead of running scripts.
