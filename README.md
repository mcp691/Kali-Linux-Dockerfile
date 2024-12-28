# Kali-Linux-Dockerfile

A simple dockerfile which allows you to build a _docker image_ starting from the latest official one of **Kali Linux** and including some useful tools.

## Included tools

These are the main **tools** which are included:

- Kali Linux [Top 10](https://tools.kali.org/kali-metapackages) metapackage
- exploitdb
- man-db
- dirb
- nikto
- wpscan
- uniscan
- tor
- proxychains
- ffuf
- lsof

Note that you can _add/modify/delete_ configuration files by doing the related changes in the dockerfile.

### Other useful things

Also [zsh](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH) is installed as default shell. You can add some changes directly in the [.zshrc](https://github.com/zMrSec/Kali-Linux-Dockerfile/blob/master/config/.zshrc) file, such as setting your favourite theme.
_Python-Pip_ and _NodeJS-NPM_ are included, too.

### Usage

In order to build an _image_ from this dockerfile, just go on the folder where it is located and simple open your favourite **Terminal**, typing as follows:

```sh
docker build [-t your_image_name] .
```

### Starting Container

The purpose of this container is to have Kali Linux with access to a user directory on the host system. This is primarily for CTF and Hack The Box challenges where downloading files for the challenge is necessary.
To run the container with the configurations required, run the command below:

```sh
sudo docker run --rm -it -v /home/<user>:/home/<user>:z --hostname kali-linux --network host --user root kali-linux
```

##### More info

Check out [Kali Linux on a Docker container: the easiest way](https://tsumarios.github.io/blog/2022/09/17/kali-linux-docker-container/) for more detailed info.

#### Contacts

- Email: marioraciti@pm.me
- LinkedIn: linkedin.com/in/marioraciti
- Twitter: twitter.com/tsumarios

_Support the original creator! ❤️_

<a href="https://www.buymeacoffee.com/tsumarios" target="_blank"><img
        src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="40"></a>

### Todos

- Add some more useful tools, languages.

**Enjoy!**
