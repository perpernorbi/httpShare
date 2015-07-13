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

## Configuration
httpShare can be configured with configuration files, environment variables and command line parameters.
The script has two options to be set
* Interface: The script gets the IP address of this interface and use it for the URL and qr code generation
* Port: The HTTP server will listen on this port

### Configuration files
