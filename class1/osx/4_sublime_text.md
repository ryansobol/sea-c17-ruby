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
# Fish colors
set fish_color_command normal --bold
set fish_color_comment black
set fish_color_history_current cyan
set fish_color_param normal
set fish_color_quote green
set fish_color_search_match --background=515151
set fish_pager_color_prefix normal
set fish_pager_color_completion blue
set fish_pager_color_description black

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


### Create fish_prompt.fish

The prompt is the visual cornerstone of every command line shell. Let's build a prompt for Fish that not only looks good, but shows relevant information.

Run the following command to get started:

```
subl ~/.config/fish/functions/fish_prompt.fish
```

Copy the following content and paste it into the file **replacing everything**:

```
function _git_branch_name
  echo (git symbolic-ref --short HEAD ^/dev/null)
end

function _is_git_dirty
  echo (git status --short --ignore-submodules=dirty ^/dev/null)
end

function fish_prompt
  if test $status -eq 0
    set_color $fish_color_cwd
  else
    set_color $fish_color_error
  end

  echo -n (prompt_pwd)

  set -l branch (_git_branch_name)

  if test -n $branch
    set_color yellow
    echo -n " $branch "

    if test -n (_is_git_dirty)
      set_color red
      echo -n "✖ "
    else
      set_color green
      echo -n "✔ "
    end
  else
    set_color magenta
    echo -n ' $ '
  end

  set_color normal
end
```

Save the file and verify the change by relaunching the Terminal app.

You should see:

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
