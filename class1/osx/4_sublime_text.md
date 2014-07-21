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
set fish_pager_color_completion green --bold
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

### Change $PATH globally

```
subl /etc/paths
```

```
/usr/local/bin
/usr/bin
/bin
/usr/sbin
/sbin
```

```
echo $PATH
```

```
/usr/local/bin /usr/bin /bin /usr/sbin /sbin
```


### Create fish_prompt.fish

```
subl ~/.config/fish/functions/fish_prompt.fish
```

```
function _git_branch_name
  echo (git symbolic-ref --short HEAD ^/dev/null)
end

function _is_git_dirty
  echo (git status --short --ignore-submodules=dirty ^/dev/null)
end

function fish_prompt
  set -l red (set_color red)
  set -l blue (set_color blue)
  set -l green (set_color green)
  set -l normal (set_color normal)
  set -l yellow (set_color yellow)
  set -l magenta (set_color magenta)

  set -l branch (_git_branch_name)
  set -l prompt

  if test -n $branch
    if test -n (_is_git_dirty)
      set prompt $red✗
    else
      set prompt $green✔
    end
  else
    set prompt $magenta\$
    set branch "\b"
  end

  echo -ne $blue(prompt_pwd) $yellow$branch $prompt $normal
end
```

```
~ $
```
