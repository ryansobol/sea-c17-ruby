### Install Sublime Text

Download [Sublime Text 2](http://www.sublimetext.com/2) and drag the app icon into your `/Applications` folder.

Then run the following command:

```
ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
```

To verify Sublime Text is installed correctly, run the following command:

```
subl ~/.config/fish/config.fish
```

And Fish's startup file should open in Sublime Text.


### Edit config.fish

While Fish's startup file is handy, add the following settings:

```
# Sublime Text
set -gx EDITOR 'subl -w'
```

Save the file and relaunch your Terminal app. Verify these settings with the following command:

```
echo $EDITOR
```

You should see:

```
subl -w
```

### Change PATH globally

Like most shells, Fish uses the `PATH` environment variable to specify a set of directories where other commands can be found.

To see the contents of the PATH environment variable, run the following command:

```
echo $PATH
```

And you should see:

```
/usr/bin /bin /usr/sbin /sbin /usr/local/bin
```

In upcoming sections, you'll use Homebrew to install additional commands.

However, you'll want Fish to prefer these Homebrew-installed commands over the pre-installed commands that come with Mac OS X.

To change the `PATH` environment variable, run the following command:

```
subl /etc/paths
```

This opens the system file called `/etc/paths` for editing in Sublime Text.

Copy the following content and paste it into the file **replacing everything**:

```
/usr/local/bin
/usr/bin
/bin
/usr/sbin
/sbin
```

Save the file and verify the change by running the following command:

```
echo $PATH
```

You should see:

```
/usr/local/bin /usr/bin /bin /usr/sbin /sbin
```

Now, the `/usr/local/bin` directory is listed first. This means Fish (and any shell that leverages `/etc/paths`) will prefer Homebrew-installed commands over the pre-installed ones.
