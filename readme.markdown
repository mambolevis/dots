These are my dotfiles. Read about them [here](http://www.blaenkdenum.com/posts/dots/).

### Installation

``` bash
$ cd $HOME # or just cd
$ git clone https://github.com/blaenk/dots.git .dots
$ cd .dots
```

### Usage

Run the sprinkle script to deploy. It shows a prompt on how (or whether) to apply the files. The prompts are answered by providing the first letter of each word, e.g. "backup" would be "b". If you want to apply the action to every remaining item, capitalize the letter.

```
$ ./dots put

  · sprinkling dots from /home/user/.dots!
  · help: backup, overwrite, remove, skip
          capitalize to apply to all remaining
```

Once the zsh configuration files are deployed, you can use the `dots` command from anywhere to both deploy the dotfiles with `dots put` as well as update the dotfiles with `dots get`.

```
λ ~/.dots (master)
» dots get

  · checking for updates since be6d115
  · updated to b234aef

  + b234aef this is one more test
  + 8a9b1ab this is a test for update command

```

#### zsh

You'll want to have zsh installed and setup for your user. Install it, then run the following command.

``` bash
$ chsh -s $(which zsh)
```

Afterward, log out and log back in for the change to take effect. The first time you open a zsh shell, zsh antigen (a zsh package manager) will download the packages I use. Don't interrupt this process.

#### urxvt

If you use urxvt, you'll want to merge the `.Xresources` into your `xrdb` to use the Solarized Light theme that I use:

``` bash
$ xrdb -merge ~/.Xresources
```

#### Command Not Found

You can get functionality where, if you enter a command that's not installed on your system, zsh will tell you which package it _is_ available in, if it finds it in some package. This is available for Ubuntu and Archlinux.

On arch, you'll have to install `pkgfile` and then generate the metadata needed for this:

``` bash
$ sudo pacman -S pkgfile
$ sudo pkgfile -u
$ abiword
abiword may be found in the following packages:
  extra/abiword 3.0.0-2 /usr/bin/abiword
```

