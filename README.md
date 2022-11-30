## Openfortivpn GNU/Linux
Script to access VPN via openfortivpn on GNU/Linux


##### Ubuntu and derivatives

```shell
# Installl 'openfortivpn'
sudo apt install openfortivpn
```

## Setup openfortivpn(example).

1. Create a folder called `openfortivpn` in the `~/Development` folder. 

2. Add the `start-fortclientvpn.sh` and `openfortivpn-config` files to the `openfortivpn` folder.

3. Enter your user and password in the `openfortivpn-config` file. Example:

> ```
> username = user
> password = passwd
> ```

4. Create an alias to start running it via terminal with the `vpn-linux` command.

> 4.1. Go to the .zshrc file (if you use ZSH as your terminal) or the .bashrc file (if you use Bash as your terminal).
> 
> ##### ZSH
> ```shell
> nano ~/.zshrc
> ```
> 
> ##### Bash
> ```shell
> nano ~/.bashrc
> ```
> 
> 4.2. After accessing the file, create an alias by adding the line below to the end of the file
> 
> ```shell
> alias vpn-linux="sh ~/Development/openfortivpn/start-fortclientvpn.sh"
> ```
> 
> Then run the command below to apply change:
> 
> ##### ZSH
> ```shell
> source ~/.zshrc
> ```
> 
> ##### Bash
> ```shell
> source ~/.bashrc
> ```
<br>
5. Now just run the `vpn-linux` command in the terminal and the connection will start.
<br>
<br>
6. In some cases, it is necessary to remove the following lines:

> ```shell
> set-dns = 1
>pppd-use-peerdns = 1
> ```
