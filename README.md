# Linux Open AI Command Line Helper
A simple command line tool that provides bash command responses and offers to run them, from natural language inputs.

## Requirements

 - An Open Ai API Key. https://platform.openai.com/api-keys
 - A Linux System with sudo access 

## Install Instructions

```
cd /tmp
git clone https://github.com/rahimkhoja/linux-help-me.git
cd linux-help-me
sudo bash ./install.sh
```

## Useage Instructions

```
user@system:~$ help-me 'I need to know what time it is in Australia'
Suggested Command: date -u -d 'TZ="Australia/Sydney"' "+%Y-%m-%d %H:%M:%S" # This command gives you the current date and time in Australia (Sydney time zone)
Do you want to execute this command? (yes/no): yes
2023-11-19 13:00:00
user@system:~$
```

```
user@system:~$ help-me 'i need to find out which directory takes up the most space from my current directory'
Suggested Command: du -a . | sort -n -r | head -n 5 # This command will list the 5 directories in your current location that consume the most disk space.
Do you want to execute this command? (yes/no): yes
32      .
4       ./.ssh
4       ./.profile
4       ./.lesshst
4       ./.cache
user@system:~$
```

## Notes

 - Sometimes OpenAI produces invalid bash command line interface output.
 - This script is a demo and has not been fully testes or polished.
 - Please ensure you understand what is happening before you agree to run the outputted commands on your system.

# 
