# homebridge-plugin-updater
Just a simple bash script to setup as a cron to update homebridge.

### Example CronTab (update every 3 days):
`0 0 */3 * * /bin/bash /home/homebridge/hbp-updater.sh > /var/lib/homebridge/homebridge.log`
