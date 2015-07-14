# httpShare
Simple script to share a folder over http. Use it to share files with your phone or an other computer.

This script is a wrapper for SimpleHTTPServer python module. It generates the share URL and a qr code for you.

## Installation

### Ubuntu
Create a bin folder in your home directory and copy src/httpShare in it. Make sure the file has write permissions.
```sh
$ sudo apt-get install python-qrcode
$ cd /tmp
$ git clone https://github.com/perpernorbi/httpShare.git
$ mkdir ~/bin
$ cp httpShare/src/httpShare ~/bin/httpShare
$ chmod 775 ~/bin/httpShare
```

### Other systems
I don't know. Try the steps above. In case that is not working, feel free to send me the solution :).

## Give it a first try
After the installation, reopen your terminal (or source your .bashrc) . Enter a directory you would like to share and issue the following command.
```sh
$ httpShare -i <network interface>
```
Replace <network interface> with the name of the network interface you use. You can stop sharing by pressing CTRL+C.

## Configuration
HttpShare can be configured with configuration files, environment variables and command line parameters.
The script has two options to be set
* Interface: The script gets the IP address of this interface and use it for the URL and qr code generation
* Port: The HTTP server will listen on this port

### Configuration files
HttpShare tries to read two configuration files. In order, they are /etc/httpShare/config and ${HOME}/.config/httpShare/config. These files should contain lines with the usual KEY=value format.

#### Example
```sh
INTERFACE=wlan0
PORT=8000
```

### Environment variables
Interface and port settings may be overwritten with the following environment variables: HTTPSHARE_INTERFACE and HTTPSHARE_PORT

### Command line parameters
Command line parameters have the highest priority. HttpShare accepts the following parameters:
* -i <interface> or --interface <interface> 
* -p <port> or --port <port>

