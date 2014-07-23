### Install chruby

Using Homebrew, you can now install [chruby](https://github.com/postmodern/chruby), a tool to change the current version of Ruby.

To get started, run the following commands:

```
brew install chruby chruby-fish
```

```
# chruby
source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish
```

```
source ~/.config/fish/config.fish
```

To verify chruby is installed correctly, run the following command:

```
chruby -v
```

And you'll see something like this:

```
chruby: 0.3.8
chruby-fish: 0.6.0
```
