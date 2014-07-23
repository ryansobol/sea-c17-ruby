### Install ruby-install

```
brew install ruby-install
```

```
ruby-install --version
```

```
ruby-install: 0.4.3
```


### Install Ruby

With ruby-install, you can finally install [Ruby](https://www.ruby-lang.org/).

To get started, run the following commands:

```
ruby-install 2.1.2
```

To verify Ruby is installed correctly, run the following command:

```
chruby
```

### Default version

```
echo '2.1.2' >> ~/.ruby-version
```

```
ruby -v
```

And you'll see something like this:

```
ruby 2.1.2p95 (2014-05-08 revision 45877) [x86_64-darwin13.0]
```
