This is a solution for a roadmaps.sh project.
- The project URL is: https://roadmap.sh/projects/log-archive-tool

Setup Steps:
1.) Install 'msmtp'.
https://superuser.com/questions/351841/how-do-i-set-up-the-unix-mail-command

sudo apt install msmtp

- setup the .msmtprc and .netrc files in your home directory.
- Ensure only your user can read/write the config file - chmod 600 ~/.msmtprc

2.) Create the relevant folders.
- These include archives, cron_debug_logs, email_logs and log_folder.
- Give all scripts executable permissions: chmod +x script_name.sh

3.) Add the scripts in the relevant locations.

4.) Setup crontab
- Type 'crontab -e' and add the Crontab-Command. It needs to point to the Log-Archiver-Crontab.sh.

What's important with all of this setup is that the directories referenced in the scripts and crontab are correct.