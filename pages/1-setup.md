# Setup

## Virtualisation

> ⚠️ Most Windows PCs (86x/64x & ARM) are suspectible to RETBLEED attacks (able to exit the VM)

Using a virtual distro is highly recommended because it isolates the real computer from possible attacks by emulating one instead. They're suspendable options that are able to utilize PITR _(Point-in-time-recovery)_ by making snapshots, a quick-save if you will.

> ℹ️ Note that each penetration test or security assessment must be performed from a freshly installed VM to avoid including security-relevant details from another client environment in reports by accident or retaining client-sensitive data for significant lengths of time.

Below are some popular open-source virtual machines:

MacOS:

- [UTM](https://mac.getutm.app/)

Windows:

- [VirtualBox](https://www.virtualbox.org/)

## Distro / OS

Recommended distros:

- [ParrotOS](https://www.parrotsec.org) (newer)
- [Kali Linux](https://www.kali.org) (older)

## Basic tools

The flint and stone of your arsenal:

|                               Name                                |                      Description                    |                             Usage                          |
|-------------------------------------------------------------------|-----------------------------------------------------|------------------------------------------------------------|
| [SSH](https://en.wikipedia.org/wiki/Secure_Shell)                 | Secure-SHell                                        | Remote terminal connection                                 |
| [FTP](https://en.wikipedia.org/wiki/File_Transfer_Protocol)       | File Transfer Protocol                              | Remote file transfer (copy from/to your machine)           |
| [cURL](https://curl.se)                                           | Client for URL                                      | CLI for Web/HTTP requests                                  |
| [NetCat](https://nmap.org/ncat/)                                  | Network Utility (TCP/UDP)                           | Connect to any service/port                                |
| [NMAP](https://nmap.org)                                          | Network Mapper                                      | Analyse target by ports and services, able to run scripts  |
| [NANO](https://www.nano-editor.org/)/[VIM](https://www.vim.org/)  | Text Editor                                         | Edit text from within terminal                             |

## VPN

> ⚠️ Usage of a VPN service does not guarantee anonymity or privacy but is useful for bypassing certain network/firewall restrictions or when connected to a possible hostile network

Secured communications channel over shared network.

- Obscure browser traffic
- Disguise our public IP address

Open-source VPN client: [OpenVPN](https://openvpn.net)

## Protections

Consider any network to be hostile.

Check if you...

- ☑️ Connect only via Virtual Machines
- ☑️ Disallow password auth if SSH enabled
- ☑️ Lock-down any web servers
- ☑️ Do not leave sensitive info on attacking machine
- ☑️ The used network is safe _(e.g. do not misuse client's)_
