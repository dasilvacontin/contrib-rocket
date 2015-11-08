![contrib-rocket header][header-image]

contrib-rocket is the awesome idea of combining [GitHub Contributions][github-contributions], [spark][spark] and a [rocket emoji][rocket-emoji] - it's like if your contributions were fueling the rocket, getting you one 'thrust' closer to the moon! 🌚

Strictly speaking, contrib-rocket is a minimal shell script that glues [gh-contribs][gh-contribs] and [spark][spark] together. It basically saves you writing a few characters, but it makes it feel _more exciting_.

## Install

### Via [antigen][antigen]/[zgen][zgen] (aka the cool way):

```sh
antigen bundle dasilvacontin/contrib-rocket
zgen load dasilvacontin/contrib-rocket
```

If you are using zgen, remember to execute [`zgen reset`][zgen-reset].

### Else

This one liner should place contrib-rocket in your $PATH:

```sh
sudo sh -c "curl https://raw.githubusercontent.com/dasilvacontin/contrib-rocket/master/contrib-rocket.sh -o /usr/local/bin/contrib-rocket && chmod +x /usr/local/bin/contrib-rocket"
```

## Dependencies

You'll also need [gh-contribs][gh-contribs] and [spark][spark] in your $PATH. You could install those with the following commands:

```sh
npm i -g gh-contribs
brew install spark
```

## Usage

contrib-rocket forwards its arguments to [gh-contribs][gh-contribs], so you should check the latter's README.

```bash
$ contrib-rocket -d 7
▅▁▃▃█▁▁🚀

$ contrib-rocket -d 14
▁▁▁▂▁▁▂▅▁▃▃█▁▁🚀
```

### Usage example in tmux status bar

![tmux example screenshot][tmux-screenshot]

In your `.tmux.conf`:
```bash
set -g status-right-length 60
set -g status-right "#(contrib-rocket -d 14) :: #(battery -t) #[fg=blue]:: %d %b %Y #[fg=cyan]::%l:%M %p "
set -g status-interval 30
```

## License

MIT © [David da Silva](http://dasilvacont.in)

[header-image]: contrib-rocket.png
[github-contributions]: https://help.github.com/articles/viewing-contributions-on-your-profile-page/
[spark]: https://github.com/holman/spark
[rocket-emoji]: http://emojipedia.org/rocket/
[gh-contribs]: https://github.com/dasilvacontin/gh-contribs
[antigen]: https://github.com/zsh-users/antigen
[zgen]: https://github.com/tarjoilija/zgen
[zgen-reset]: https://github.com/tarjoilija/zgen#remove-the-init-script
[tmux-screenshot]: tmux-screenshot.png
[kitlard-imgur]: http://imgur.com/gallery/Sznci

