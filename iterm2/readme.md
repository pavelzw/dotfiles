# iTerm2

This is the configuration folder for [iTerm2](https://github.com/gnachman/iTerm2).

iTerm2 needs to be configured so that it loads the preferences from the correct file.
You can either do that by going to Preferences -> Preferences -> Load preferences from a custom folder or URL and specifying `~/.config/iterm2` as the folder or via the following terminal commands:

```bash
# Specify the preferences directory
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.config/iterm2"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
```


![Screenshot - iTerm2 pink light theme](https://i.imgur.com/bzjVTVH.png)
<p align="center">iTerm 2 pink light theme</p>


![Screenshot - iTerm2 pink dark theme](https://i.imgur.com/lZ739Es.png)
<p align="center">iTerm 2 pink dark theme</p>
