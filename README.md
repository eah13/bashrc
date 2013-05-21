bashrc
======

Sample `.bashrc` for pimping your prompt.  Use the files in this repo to teach or learn about bash.

You'll need a terminal program for this.  Terminal on Mac/*nix, [Git Bash](http://git-scm.com/download/win) on Windows.

## Usage

Basic instructions are below.  See each folder's README.md for further instruction.

### example/

Contains beginning examples.  Start here.  `cd example` to change to this directory.

* `example/.bashrc`
A basic .bashrc file that explains how an why you should `alias` things, `export` variables, and, of course, pimp your prompt by changing $PS1.

See what this file does by typing
```
    > source .bashrc
```

* `example/script.sh`
A basic bash script that prints a line.  It's called in `example/.bashrc`, so you'll see its output everytime you `source` `.bashrc`.


### pimprompts/

Contains lots of cool prompts for you to hackity hack.

* `pimprompts/.bashrc`
Find all sorts of prompts in here.  Most are commented out.  `cd pimprompts` to change to this directory.  (or, if you are in `example/`, `cd ../pimprompts).
Run `nano .bashrc` and remove the comments from each line that contains a PS1 variable, then `source pimprompts/.bashrc` to see the prompt in action. 



