# Kali Linux latest with useful tools by tsumarios
FROM kalilinux/kali-rolling

# Set working directory to /root
WORKDIR /root

# Update
RUN apt -y update --fix-missing && DEBIAN_FRONTEND=noninteractive apt -y dist-upgrade && apt -y autoremove && apt clean

# Install common and useful tools
RUN apt -y install curl wget vim git net-tools whois netcat-traditional pciutils usbutils dnsutils nfs-common telnet snmp

# Install useful languages
RUN apt -y install python3-pip golang nodejs npm

# Install Kali Linux "Top 10" metapackage and a few cybersecurity useful tools
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-top10 exploitdb man-db apktool dex2jar ltrace strace binwalk evil-winrm

# Install wordlists
RUN apt -y install wordlists seclists

# Install recon tools
RUN apt -y install enum4linux nikto wpscan ffuf dirb lsof uniscan smbmap dnsenum

# Install pillaging tools
RUN apt -y install exiftool

# Install Tor
RUN apt -y install tor

# Install ZSH shell with custom settings and set it as default shell
RUN apt -y install zsh

COPY config/.zshrc .