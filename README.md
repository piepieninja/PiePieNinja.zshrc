# Custom GUI and Zshell for Mac OSX and macOS 10.12.\*, 10.11.\*, and 10.10.* 

#### Tutorials and Posts:

* [custom GUI post](http://computersciencetumbld.tumblr.com/post/132559487676/so-i-customized-my-mac-today-for-the-gui-i#notes "custom GUI")
* [terminal tools and custom settings](http://computersciencetumbld.tumblr.com/post/137505524011/some-more-mac-unix-customization-today-i#notes "terminal goodies")

### Added Functions
To update your zshell config after it has been edited, and to add a custom commit message to it just type: 
```bash
$ zpush
```
To edit your .zshrc file with your favorite editor simply type:
```bash
$ ze
```
Te edit your .zsh-theme and customize it willie nillie type:
```bash
$ zt
```
To refresh and reload zshell with your new configurations type:
```bash
$ zload
```
To move into the Git Repository that holds your custom zshell code type:
```bash
$ zconf
```
To go begin adding custom settings and go into the custom setting prompt simply type:
```bash
$ customsettings
```
To view a train endlessly type:
```bash
$ train
```
To make it snow inside of your terminal type:
```bash
$ snow
```

<i>note: editing files assumes emacs. This may change at a later date.</i>

## Dependencies: 

   You must change the $REPO_PATH variable to point to your github repository!

* [homebrew](http://brew.sh/ "brew")
* [gem](http://guides.rubygems.org/rubygems-basics/ "gem")
* [zshell](http://example.com/ "zshell")
* [screenfetch](https://github.com/KittyKatt/screenFetch "screenfetch") (brew install)
* [sl](https://github.com/mtoyoda/sl "sl") (brew install)
* [lolcat](https://github.com/busyloop/lolcat "lolcat") (gem install)
* [Ruby](https://github.com/ruby/ruby "ruby") (brew install)
* [colorize](https://github.com/fazibear/colorize "colorize")(gem install)

## Recommended:

* [htop](https://github.com/hishamhm/htop "htop") (brew install)
* [cask](https://github.com/caskroom/homebrew-cask "cask") (brew install)

## Need Additional GUI Customization:

<i>For 10.12 you need to manually disable <code>SIP</code> to change icons</i>

you need to restart your mac, boot into recovery mode, then open terminal and run:  <code>csrutil enable --without fs</code>


* [liteicon](https://freemacsoft.net/liteicon/ "lite icon") (brew cask install)
* [cdock](http://sourceforge.net/projects/cdock/ "cdock") (customize your dock)
* [flavours](http://flavours.interacto.net/ "flavours") (this is the only portion you may have to pay for... )
* [white minimal icons](http://noshery.deviantart.com/art/Minimalist-White-Icons-Mac-OS-X-470738808 "Custom Minimal White Icons") (this same artist has many other great icon sets. Additio
* [Classic Mac icons](https://static1.squarespace.com/static/52dc33c9e4b04f03beae73e2/t/540ea334e4b099e2ef878b43/1410245428617/Macintosh+Classic.zip "Classic Macintosh Icons") (I'm actively looking to source this)
nal icons are included in the icons folder.)

### With All Programs Installed:
#### With the included ruby scripts the terminal prompt will look like this, with a battery and itunes indicator:
![custom prompt](/img/prompt.png "custom prompt")
#### The Themes can be customized other than this, but this is what your mac could look like.
![windows and terminal](/img/terminal.png "Windows and Terminal")
![windows](/img/windows.png "The Terminal")
![the dock](/img/dock.png "The Dock")
![windows](/img/finder.png "The Finder")


### Author: Caleb Adams
#### [CalebDevelops.com](https://calebdevelops.com "CalebDevelops.com")
#### [ScientificSpaceSystems.com](http://ScientificSpaceSystems.com "Scientific Space Systems")
