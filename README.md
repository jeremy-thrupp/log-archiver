# Log Archive Tool

This is a solution for the roadmap.sh Log Archive Tool project: 
https://roadmap.sh/projects/log-archive-tool

This tool automates the process of archiving logs and sending notifications.

Setup Steps
1. Install and Configure 'msmtp'
To handle email notifications, you need to install msmtp. For detailed configuration, you can refer to this guide: 
https://superuser.com/questions/351841/how-do-i-set-up-the-unix-mail-command

Install:
sudo apt install msmtp

Configuration:
Set up the .msmtprc and .netrc files in your home directory.

Security:
Ensure only your user can read or write the configuration file by running:
chmod 600 ~/.msmtprc

2. Prepare Directories and Permissions
Create the necessary folders for the tool to function: archives, cron_debug_logs, email_logs, and log_folder.

Grant executable permissions to all scripts:
chmod +x script_name.sh

3. Deploy Scripts
Move the scripts into their relevant directory locations as defined in your environment.

4. Configure Crontab
To automate the archiving process, add a cron job:

Run crontab -e.

Add the command pointing to Log-Archiver-Crontab.sh.

Note: It is important that all the directory paths referenced in both the scripts and the crontab commands are correct.
