# Libraries - Desktop Bin

David Williamson @ Varilink Computing Ltd

------

A library of operating system executables that I find useful but are probably specific to my own, development desktop setup, which uses Debian.

## Usage

This is how I use it in my desktop environment.

1. Clone this repository into its associated location in the *Projects* directory.

2. Make a symbolic link to that local clone of this repository as `~/bin`

3. Add the following lines to the bottom of `~/.bashrc`

```sh
if [ -f ~/bin/.bashrc ]; then
  source ~/bin/.bashrc
fi
```

The provided `.bashrc` appends `$HOME/bin` to `$PATH`.

## Contents

Here is a list of the executables provided by this repository and their functions. As above, these are quite specific to my desktop environment and how I work within that environment but I share them in case they're useful to anyone in anyway.

`backup-message-filters.sh`

I use Thunderbird message filters. Since I use Thunderbird on more than one client and the filters are stored on the client, this script backs the filters up to a Dropbox directory so that I can restore them on other clients.

I did try replacing the filter files with symbolic links to files in my Dropbox directory but that doesn't seem to work for some reason. In any case, automation means that I don't have to do that manually on each client.
