# Aizan's Pandoc Config

Welcome to this Git repository. I recently started learning how to couple my writing workflow with Markdown with Pandoc to generate HTML and PDF files. Recently I customized by Vim heavily so that it feels [homey](https://meta.caspershire.net/writer-vim/) for writing.

**Warning**. This repository is still a work in progress.

### Clone this repo

```
git clone git@github.com:aixnr/pandoc-config.git ~/.pandoc
```

This command downloads this repository to the `~/.pandoc` directory. Congrats!

### The mdr.sh

Take a look at the `mdr.sh` file. To use it, issue this command:

```
$ ./mdr.sh input.md output.html 
```

**Note:** Make sure `mdr.sh` is executable. Run `chmod +x mdr.sh` first.

This takes the first variable as input (a Markdown file) and the second variable as output (an HTML file). Further customization of this `bash` script is possible. For example:

```
#!/bin/bash
pandoc "$1" --smart --self-contained \
        --css=/home/fiona/.pandoc/$3.css --highlight-style=haddock \
        --output="$2"
```

Where `fiona` is the `$USER` of my box. It takes the third variable `$3`, which is a CSS file that's present in my `~/.pandoc` folder. As you can see, currently I have 2 CSS files.

### entr

```
$ find . | entr ./mdr.sh input.md output.html 
```

This command requires `entr` to be installed (available on `brew` as well). It is a simple mechanism to automatically generate `output.html`. When `entr` sees changes in the `input.md`, it will spit out the updated `output.html`. However, this does not do browser live-reload (a.k.a hot-reload), so a user must reload the browser page manually.

### path

To make it easier, simply move `mdr.sh` to `/usr/local/bin` and refresh with `hash -r`. Now, the `mdr.sh` can be invoked anywhere!

### acknowledgements & resources

1. Osmo Salomaa's [GitHub repository](https://github.com/otsaloma/markdown-css)
2. Jake Zimmerman's [GitHub repository](https://github.com/jez/tufte-pandoc-css)
3. Martin Betz's write-up on using [Markdown + Pandoc to generate PDF invoices](https://dev.to/martin_betz/generate-pdf-invoices-from-markdown-using-pandoc)
