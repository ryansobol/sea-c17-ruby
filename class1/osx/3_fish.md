### Install Fish

Using Homebrew, you can now install [Fish](http://fishshell.com/), a smart and user-friendly command line shell.

To get started, run the following command:

```
brew install fish
```

Then add Fish to `/etc/shells`, which will require an administrative password:

```
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
```

Finally, make Fish your default shell:

```
chsh -s /usr/local/bin/fish
```

Now, relaunch your Terminal app. Welcome to Fish!


### Improve the prompt

The prompt is the visual cornerstone of every command line shell. Let's build a prompt for Fish that not only looks good, but shows relevant information.

First, make a directory for your fish prompt by running the following command:

```
mkdir ~/.config/fish/functions
```

Then download the fish prompt:

```
curl -fsSL https://raw.github.com/ryansobol/config/master/fish/functions/fish_prompt.fish > ~/.config/fish/functions/fish_prompt.fish
```

Verify the change by relaunching the Terminal app. You should see:

```
~ $
```

When changing directories:

```
cd .config
```

You should see:

```
~/.config $
```


### Update the auto-completions

Fish's auto-completion feature enhances the user experience of most command line tools.

To have the most up-to-date completions, run the following command:

```
fish_update_completions
```

To verify, start typing:

```
brew in
```

And press the `tab` key. You should see:

```
info  (Display information about formula)  install  (Install formula)
```

Finish the command by typing:

```
brew info fish
```

And you'll see something like:

```
fish: stable 2.1.0, HEAD
http://fishshell.com
/usr/local/Cellar/fish/2.1.0 (681 files, 5.5M) *
  Built from source
From: https://github.com/Homebrew/homebrew/blob/master/Library/Formula/fish.rb
==> Caveats
You will need to add:
  /usr/local/bin/fish
to /etc/shells. Run:
  chsh -s /usr/local/bin/fish
to make fish your default shell.
```


### Going back to Bash

To temporarily switch to the Bash shell for a single session, run:

```
bash
```

When you're done with your Bash session, type `exit` to return to Fish.

To permanently revert your default shell back to Bash:

```
chsh -s /bin/bash
```

Then relaunch your Terminal app.

**WARNING:** The remaining setup instructions assume you're using Fish.
