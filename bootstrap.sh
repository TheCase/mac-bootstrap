cp -v dotfiles/bash_profile ~/.bash_profile
cp -v dotfiles/vimrc ~/.vimrc

xcode-select --install
ssh-keygen -q -N ""

git config --global user.name "TheCase"
git config --global user.email github@repulsor.net
curl -s https://raw.githubusercontent.com/github/gitignore/master/Global/macOS.gitignore -o ~/.gitignore

if [ ! `which brew` ]; then
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew tap Homebrew/bundle
brew bundle

vagrant plugin install virtualbox
vagrant plugin install cachier

apm install --package-file atom-packages.txt
apm update --no-confirm
apm disable spell-check
