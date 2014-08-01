### Install ruby-install

Using Homebrew, install another tool called [ruby-install](https://github.com/postmodern/ruby-install). Can you guess what this tool does?

To get started, run the following command:

```
brew install ruby-install
```

Verify ruby-install was installed correctly:

```
ruby-install --version
```

You should see:

```
ruby-install: 0.4.3
```


### Install Ruby

With ruby-install, you can finally install [Ruby](https://www.ruby-lang.org/).

To get started, run the following commands:

```
ruby-install 2.1.2
```

Once it finishes, verify chruby knows it's installed correctly:

```
chruby
```

And you should see:

```
ruby-2.1.2
```


### Default version

With the latest version of Ruby installed, tell chruby to start using it!

To do so, run the following command:

```
echo '2.1.2' > ~/.ruby-version
```

To verify, run the following command:

```
chruby
```

You should see:

```
 * ruby-2.1.2
```

To double check, run the following command:

```
ruby -v
```

And you'll see something like this:

```
ruby 2.1.2p95 (2014-05-08 revision 45877) [x86_64-darwin13.0]
```
