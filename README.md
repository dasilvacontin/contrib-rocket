![contrib-rocket header][header-image]

contrib-rocket is the awesome idea of combining [GitHub Contributions][github-contributions], [spark][spark] and a [rocket emoji][rocket-emoji] - it's like if your contributions were fueling the rocket, getting you one 'thrust' closer to the moon! 🌚

Strictly speaking, contrib-rocket is a minimal shell script that glues [gh-contribs][gh-contribs] and [spark][spark] together. It basically saves you writing a few characters, but it makes it feel _more exciting_.

## Install

### Via [npm][npm]

```sh
npm i -g contrib-rocket
```

### Else

This one liner should place contrib-rocket in your $PATH:

```sh
sudo sh -c "curl https://raw.githubusercontent.com/dasilvacontin/contrib-rocket/master/contrib-rocket.sh -o /usr/local/bin/contrib-rocket && chmod +x /usr/local/bin/contrib-rocket"
```

## Dependencies

You'll need [gh-contribs][gh-contribs] and [spark][spark] in your $PATH. However, they will be installed for you the first time you execute or source contrib-rocket – [_nice_][nice]!

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
[npm]: https://www.npmjs.com/
[gh-contribs]: https://github.com/dasilvacontin/gh-contribs
[nice]: http://gifsec.com/wp-content/uploads/2014/02/boss-gifs.gif
[tmux-screenshot]: tmux-screenshot.png
[kitlard-imgur]: http://imgur.com/gallery/Sznci

