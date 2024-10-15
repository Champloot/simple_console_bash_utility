# Console_bash_utility_1
A BASH console utility that processes command line arguments and performs some actions.

1. For the -u and --users arguments, outputs a list of users and their home directories to the screen, sorted alphabetically;
2. For the -p and --processes arguments, outputs a list of running processes, sorted by their ID;
3. For the -h and --help arguments, outputs help with a list and description of arguments and stops work;
4. For the -l PATH and –log PATH arguments, replaces output to the screen with output to a file at the specified PATH path;
5. For the -e PATH and –errors PATH arguments, replaces error output from the stderr stream to a file at the specified PATH path.

Notes:
1. Command line arguments must be processed using the getopt or getopts mechanisms.
2. Each type of action must be processed in a separate function.
3. The program must check access to the path and output appropriate error messages.  The program must filter or process the outputs in stderr of the commands used.
