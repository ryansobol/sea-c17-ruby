### Install chruby

Using Homebrew, you can now install [chruby](https://github.com/postmodern/chruby), a tool to change the current version of Ruby.

To install chruby, run the following command:

```
brew install chruby chruby-fish
```

To verify chruby is installed correctly, run the following command:

```
chruby -V
```

You'll see something like this:

```
chruby: 0.3.8
chruby-fish: 0.6.0
```


### Configure chruby

To configure chruby, simply integrate it with Fish.

Open up Fish's start up file for editing in Sublime Text:

```
subl ~/.config/fish/config.fish
```

Copy the following content and paste it **at the bottom** of the file:

```
# chruby
source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish
```

Save the file and reload the settings by running the following command:

```
source ~/.config/fish/config.fish
```
