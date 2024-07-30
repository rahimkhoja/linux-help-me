# Linux Open AI Command Line Helper
A simple command line tool that provides bash command responses and offers to run them, from natural language inputs.

### By: Rahim Khoja ( rahim@khoja.ca )

## Requirements

 - An Open Ai API Key. https://platform.openai.com/api-keys
 - A Linux System that has git installed, along with sudo access 

## Install Instructions

1. Get an OpenAI Api Key: https://platform.openai.com/api-keys

2. Run the following commands on any Debian or Enterprise Linux flavors:

```
cd /tmp
git clone https://github.com/rahimkhoja/linux-help-me.git
cd linux-help-me
sudo bash ./install.sh
```

## Usage Instructions

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

## More Examples

![Installing Packages in English](/images/linux-help-me-1.png)

![Create a fstab entry in Natural Language](/images/linux-help-me-2.png)

## Notes

 - Sometimes OpenAI produces invalid bash command line interface output.
 - This script is a demo and has not been fully tested or polished. Expect minor Issues!
 - Please ensure you understand what is happening before you agree to run the outputted commands on your system.

# Disclaimer
## Use at Your Own Risk

Please note that the software/script provided in this repository is made available for educational and informational purposes only. As the author, I do not accept any responsibility for any harm, damage, or other issues that may arise from its use. By choosing to use this script, you acknowledge and agree to the following terms:

No Warranty: The script is provided "as is", without warranty of any kind, express or implied. I, as the author, make no representations or warranties regarding its safety, reliability, or suitability for any particular purpose.

Your Responsibility: You are fully responsible for understanding the workings and implications of the script. It is advised that you thoroughly review the code and understand its impact before execution.

Assumption of Risk: By using this script, you willingly assume all risks associated with its operation. This includes, but is not limited to, the risk of system instability, data loss, or security vulnerabilities.

Caution Advised: Please exercise caution and consider testing the script in a controlled environment before deploying it in a production scenario. Ensure you have adequate backups and recovery plans in place.

No Liability: I shall not be held liable for any direct or indirect damages or any consequences arising from the use or misuse of this script.

By using this software, you acknowledge that you have read this disclaimer, understand its terms, and agree to be bound by them. 


## Support

Since I am extremely lazy I am not going to offer any support. Well maybe every once-n-a while. It really depends on my mood. 

That being said, time was spent documenting each command in the scripts. This should allow the scripts to be easily understood and modified if needed. 


## Donations
Many Bothans died getting this Linux AI Admin Helper Tool to you, honor them by sending me some Crypto. ;)

ETH Mainnet: 0x1F4EABD7495E4B3D1D4F6dac07f953eCb28fD798   
BNB Chain: 0x1F4EABD7495E4B3D1D4F6dac07f953eCb28fD798   



## License
Released under the GNU General Public License v3. 

http://www.gnu.org/licenses/gpl-3.0.html

