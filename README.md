sea-c17-ruby
============

[![Gitter chat](https://badges.gitter.im/codefellows/sea-c17-ruby.png)](https://gitter.im/codefellows/sea-c17-ruby)

Table of Contents
-----------------

[Setup for Mac OS X](https://github.com/codefellows/sea-c17-ruby#setup-for-mac-os-x)

[Setup for Ubuntu](https://github.com/codefellows/sea-c17-ruby#setup-for-ubuntu)


Setup for Mac OS X
------------------

This guide will help you setup a Ruby development environment on [Mac OS X 10.9 Mavericks](https://www.apple.com/osx/).

Older versions of OS X are mostly compatible so follow along as far as you can and then Google search for any problems you run into. There are plenty of people who have documented solutions for them.

### Install Homebrew

First, you need to install [Homebrew](http://brew.sh/), the de facto package manager for OS X.

To start, launch the **Terminal** app and run the following command:

```
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

Make sure to agree when asked to install the **XCode CommandLine Tools**.

To verify Homebrew is installed correctly, run the following command:

```
brew doctor
```

And you'll see something like this:

```
Your system is ready to brew.
```

Finish up by ensuring the shell can easily find any software installed by Homebrew:

```
echo 'export PATH=/usr/local/bin:$PATH' >> ~/.bash_profile

source ~/.bash_profile
```


### Update Homebrew

If you've previously installed Homebrew, now is a good time to update it by running:

```
brew update
```

To verify Homebrew is up-to-date, run the following command:

```
brew doctor
```

And you'll see something like this:

```
Your system is ready to brew.
```


### Install rbenv

Using Homebrew, you can now install [rbenv](https://github.com/sstephenson/rbenv), a Ruby environment manager.

To get started, run the following commands:

```
brew install rbenv ruby-build rbenv-gem-rehash

echo 'export PATH=$HOME/.rbenv/bin:$PATH' >> ~/.bash_profile

echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

source ~/.bash_profile
```

To verify rbenv is installed correctly, run the following command:

```
rbenv -v
```

And you'll see something like this:

```
rbenv 0.4.0
```


### Install Ruby

With rbenv, you can finally install [Ruby](https://www.ruby-lang.org/).

To get started, run the following commands:

```
rbenv install 2.1.2

rbenv global 2.1.2
```

To verify Ruby is installed correctly, run the following command:

```
ruby -v
```

And you'll see something like this:

```
ruby 2.1.2p95 (2014-05-08 revision 45877) [x86_64-darwin13.0]
```


### Install Git

You'll also need [Git](http://git-scm.com/), the version control system of choice among developers.

To install Git, run the following command:

```
brew install git
```

To verify Git is installed correctly, run the following command:

```
git --version
```

And you'll see something like this:

```
git version 2.0.1
```


### Install Sublime Text

Download [Sublime Text 2](http://www.sublimetext.com/2) and drag the app icon into your `/Applications` folder.

Then run the following command:

```
echo 'alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"' >> ~/.bash_profile

echo 'export EDITOR="subl -w"' >> ~/.bash_profile

source ~/.bash_profile
```

To verify Sublime Text is installed correctly, run the following command:

```
subl ~/.bash_profile
```

And you'll see something like this:

```
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
export EDITOR="subl -w"
```


Setup for Ubuntu
----------------

This guide will help you setup a Ruby development environment on [Ubuntu 14.04 Trusty Tahr](http://releases.ubuntu.com/14.04/).

Older versions of Ubuntu are mostly compatible so follow along as far as you can and then Google search for any problems you run into. There are plenty of people who have documented solutions for them.


### Install Dependencies

First, you need to update Ubuntu's **Advanced Packaging Tool** (APT).

To start, launch the **Terminal** app and run the following command:

```
sudo apt-get update
```

Next, you need to install some dependencies:

```
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties
```

From here, install rbenv:

```
cd

git clone git://github.com/sstephenson/rbenv.git .rbenv

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc

echo 'eval "$(rbenv init -)"' >> ~/.bashrc

source ~/.bashrc
```

And then ruby-build:

```
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc

source ~/.bashrc
```


### Install Ruby

Finally, you can install [Ruby](https://www.ruby-lang.org/). Simply run the following commands:

```
rbenv install 2.1.2

rbenv global 2.1.2
```

To verify Ruby is installed correctly, run the following command:

```
ruby -v
```

And you'll see something like this:

```
ruby 2.1.2p95 (2014-05-08 revision 45877) [x86_64-linux13.0]
```
