# Kali Linux latest with useful tools by tsumarios
FROM kalilinux/kali-rolling

# Set working directory to /root
WORKDIR /root

# Update
RUN apt -y update && DEBIAN_FRONTEND=noninteractive apt -y dist-upgrade && apt -y autoremove && apt clean

# Install common and useful tools
RUN apt -y install curl wget vim git net-tools whois netcat-traditional pciutils usbutils

# Install useful languages
RUN apt -y install python3-pip golang nodejs npm

# Install Kali Linux "Top 10" metapackage and a few cybersecurity useful tools
RUN DEBIAN_FRONTEND=noninteractive apt -y install kali-tools-top10 exploitdb man-db dirb nikto wpscan uniscan wordlists ffuf lsof apktool dex2jar ltrace strace binwalk evil-winrm enum4linux

# Install Tor
RUN apt -y install tor

# Install ZSH shell with custom settings and set it as default shell
RUN apt -y install zsh

COPY config/.zshrc .