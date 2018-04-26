# Aizan's Pandoc Config

Welcome to this Git repository. I recently started learning how to couple my writing workflow with Markdown with Pandoc to generate HTML and PDF files. Recently I customized by Vim heavily so that it feels [homey](https://meta.caspershire.net/writer-vim/) for writing.

**Warning**. This repository is still a work in progress.

### The mdr.sh

Take a look at the `mdr.sh` file. To use it, issue this command:

```
$ ./mdr.sh input.md output.html 
```

This takes the first variable as input (a Markdown file) and the second variable as output (an HTML file). Further customization of this `bash` script is possible. For example:

```
#!/bin/bash
pandoc "$1" --smart --self-contained \
        --css=/home/fiona/.pandoc/$3.css --highlight-style=haddock \
        --output="$2"
```

Where `fiona` is the `$USER` of my box. It takes the third variable `$3`, which is a CSS file that's present in my `~/.pandoc` folder. As you can see, currently I have 2 CSS files.
