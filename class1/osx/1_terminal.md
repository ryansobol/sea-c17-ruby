Setup for Mac OS X
------------------

This guide will help you setup a Ruby development environment on [Mac OS X 10.9 Mavericks](https://www.apple.com/osx/).

Older versions of OS X are mostly compatible so follow along as far as you can and then Google search any problems you come across. There are plenty of people who have documented solutions for them.


### Apple Terminal

Included in Mac OS X, the **Terminal app** is a program that runs a Unix shell.

A **Unix shell** is a command line user interface between you and your computer's operating system. You're probably most familiar with the operating system's graphical user interface. While technically also shell, most programmers think of the textual, command line interface when they hear to word shell.


### Explore the Terminal

Let's get our hands dirty and have some fun.

First, launch the Terminal app which lives in the `/Applications/Utilties/` directory. Once launched, you'll see something like:

```
Last login: Fri Jul 18 22:40:40 on ttys000
photon:~ ryansobol$
```

Here's a quick break down of what you're seeing:

* The date of your last login.
* The name of your computer, `photon` in this case.
* The current working directory, `~` a.k.a. your home directory.
* The short name of your user account which, for me, is `ryansobol`.
* And finally, the prompt symbol `$`. Anything typed appears after this symbol.

Go ahead and type `uname`. After pressing the Enter key, you'll see something like:

```
Last login: Fri Jul 18 22:40:40 on ttys000
photon:~ ryansobol$ uname
Darwin
photon:~ ryansobol$
```

Here's what happened:

1. The shell accepted the command `uname`.
1. It then searched for a program with the same name.
1. Once found, it launched the `uname` program, handing it control over the Terminal.
1. While running, the program told the Terminal to display the word `Darwin`.
1. Once finished, the `uname` program exited, handing control of the Terminal back to the shell.
1. The shell told the Terminal to display another prompt.
1. Once displayed, the shell began waiting for the next user command.


Here's a diagram that outlines each step:

**TODO:** Insert diagram

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
