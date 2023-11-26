# dotfiles
dotfiles
`sh installer.sh`

## usage
- install zsh
`sudo apt install zsh`
- install rbenv
`git clone https://github.com/rbenv/rbenv.git ~/.rbenv`
- install ruby-build
`git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build`
- install zplug
`curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh`
- install ghq
`sudo apt install golang-go`
`go install github.com/x-motemen/ghq@latest`
- install peco
`go install github.com/peco/peco/cmd/peco@latest`

### change default shell

```
$ chsh
Shell: /bin/zsh
```
