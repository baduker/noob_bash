# noob_bash
A handful of bash scripts

![logo](https://camo.githubusercontent.com/7c9b27101ba491969d016f2f2427c3e066f7bd0b/68747470733a2f2f63646e2e7261776769742e636f6d2f6f64622f6f6666696369616c2d626173682d6c6f676f2f6d61737465722f6173736574732f4c6f676f732f4964656e746974792f504e472f424153485f6c6f676f2d7472616e73706172656e742d62672d636f6c6f722e706e67)

## Scripts:

1. [Count Items](https://github.com/baduker/noob_bash/blob/master/scripts/ci.sh):
A simple script that counts the number of items (files) in a given folder.

2. [Simulate Typing](https://github.com/baduker/noob_bash/blob/master/scripts/sim.sh): A silly script that simulates typing (just like in the movies!).

3. [Up](https://github.com/baduker/noob_bash/blob/master/scripts/up.sh): A one-liner version of a combine `uptime` command.

4. [Weather](https://github.com/baduker/noob_bash/blob/master/scripts/weather.sh): A super simple weather script based on the awesome [wttr.in](https://github.com/chubin/wttr.in) project!

5. [Set it up](https://github.com/baduker/noob_bash/blob/master/scripts/setitup.sh): This is a personal utility script for managing newly written scripts.

6. [Remove all .html files](https://github.com/baduker/noob_bash/blob/master/scripts/rm_html.sh): Removes all .html files from the current directory.

7. [Find compressed files by extension](https://github.com/baduker/noob_bash/blob/master/scripts/arch.sh): Finds and removes compressed files (.deb, .zip, .tar, .gz) that are older than 14 days.

8. [Generate a temporary random password](https://github.com/baduker/noob_bash/blob/master/scripts/genpass/genpass.sh): The bash files is a wrapper for a Python script that generates a random 8-character long password

9. [Trim the bash prompt working directory](https://github.com/baduker/noob_bash/blob/master/scripts/trim_pwd.py): A small python script that trims the bash prompt's working directory.

10. [List directories sorted by size](https://github.com/baduker/noob_bash/blob/master/scripts/genpass/by_size.sh): The following bash script will accept 2 arguments. First argument will be a directory name in which we will start our search and the second argument will by a number of directories the script should output.

## Usage:

You can run any of the scripts either from the directory they're located in or add them to your `PATH`. That way, a given script can be run from anywhere.

### Here's how to do it.

+ Remove the `.sh` extension first by running this command `mv a_script.sh a_script`.

+ Save the script in some directory, for example `~/bin`.

+ Add the `~/bin` to your `PATH` by typing `export PATH=$PATH:~/bin`.

+ Now you can run the script from anywhere!
