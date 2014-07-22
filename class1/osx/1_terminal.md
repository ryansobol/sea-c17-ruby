Setup for Mac OS X
------------------

This guide will help you setup a Ruby development environment on [Mac OS X 10.9 Mavericks](https://www.apple.com/osx/).

Older versions of OS X are mostly compatible so follow along as far as you can and then Google search for any problems you run into. There are plenty of people who have documented solutions for them.


### Apple Terminal

The Terminal app, included in Mac OS X, is a program that runs a Unix shell.

A Unix shell is a command line user interface -- as opposed to a graphical user interface -- to your computer's operating system.

Launch the Terminal app, which lives in `/Applications/Utilties/`, and you'll  see something like:

```
Last login: Fri Jul 18 22:40:40 on ttys000
photon:~ ryansobol$
```

Which indicates:

* The date of your last login
* The name of your computer: `photon`
* The current working directory: `~` a.k.a. your home directory
* The short name of your user account: `ryansobol`
* And, finally, the prompt symbol: `$`


### Change the Terminal Profile

The default Terminal Profile uses small, black text on a white background. Boring!

To change your profile to something more exciting:

1. Download the [Tomorrow Night Eighties](https://raw.githubusercontent.com/ryansobol/sea-c17-ruby/master/class1/osx/Tomorrow%20Night%20Eighties.terminal) terminal profile.
1. Install the profile by double-clicking the file.
1. At the top of the screen, navigate to the `Terminal > Preferences` menu item.
1. In the preferences window, click the `Settings` Pane.
1. On the left side, scroll to the bottom and select the `Tommorrow Night Eighties` profile.
1. Then click the `Default` button.

When you're done, the preferences window should look like this:

![](https://i.imgur.com/ylohQgf.png)

And every new Terminal window that you open should look like this:

![](https://i.imgur.com/eOy5Hzv.png)
