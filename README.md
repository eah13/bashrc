bashrc
======

Sample `.bashrc` for pimping your prompt.  Use the files in this repo to teach or learn about bash.

You'll need a terminal program for this.  Terminal on Mac/*nix, [Git Bash](http://git-scm.com/download/win) on Windows.

## Usage

```
git clone https://github.com/eah13/bashrc.git 
cd bashrc
```

Basic instructions for each subfolder are below. 

### example/

Contains beginning examples.  Start here.  `cd example` to change to this directory.

* `example/.bashrc`
A basic .bashrc file that explains how an why you should `alias` things, `export` variables, and, of course, pimp your prompt by changing $PS1.

See what this file does by typing
```
    > source .bashrc
```
then explore its source code and helpful comments written there with
```
    > less .bashrc
```
(Press q to exit less)

* `example/script.sh`
A basic bash script that prints a line.  It's called in `example/.bashrc`, so you'll see its output everytime you `source` `.bashrc`.

Modify what it does by typing
```
    > nano script.sh
```
Then see how it's changed your prompt by running
```
    > source .bashrc
```
again.


### pimprompts/

Contains lots of cool prompts for you to hackity hack.  `nano` to edit, then `source` to see what's happened.

* `pimprompts/.bashrc`
Find all sorts of prompts in here.  Most are commented out.  `cd pimprompts` to change to this directory.  (or, if you are in `example/`, `cd ../pimprompts`).
Run `nano .bashrc` and remove the comments from each line that contains a PS1 variable, then `source pimprompts/.bashrc` to see the prompt in action. 



