# Kali Linux latest with useful tools by tsumarios
FROM kalilinux/kali-rolling

# Set working directory to /root
WORKDIR /root

# Update
RUN apt -y update --fix-missing && DEBIAN_FRONTEND=noninteractive apt -y dist-upgrade && apt -y autoremove && apt clean

# Install common and useful tools
RUN apt -y install curl wget vim git net-tools whois netcat-traditional pciutils usbutils dnsutils nfs-common telnet snmp ftp jq iputils-ping pipx freerdp3-x11 default-mysql-server

# Install useful languages
RUN apt -y install python3-pip golang nodejs npm

# Install Kali Linux "Top 10" metapackage and a few cybersecurity useful tools
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-top10 exploitdb man-db apktool dex2jar ltrace strace binwalk evil-winrm

# Install network protocol tools
RUN apt -y install impacket-scripts

# Install wordlists
RUN apt -y install wordlists seclists

# Install password cracking tools
RUN apt -y install crackmapexec hashcat

# Install web recon tools
RUN apt -y install nikto wpscan ffuf dirb gobuster wafw00f

# Install OS recon tools
RUN apt -y install enum4linux lsof uniscan smbmap dnsenum onesixtyone

# Install reverse shell specialized tools
RUN apt -y install laudanum

# Install pillaging tools
RUN apt -y install exiftool

# Install Tor
RUN apt -y install tor

# Install ZSH shell with custom settings and set it as default shell
RUN apt -y install zsh

COPY config/.zshrc .
