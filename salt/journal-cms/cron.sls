#
# cron jobs
#
journal-cms-cron:
    cron.present:
        - identifier: journal-cms-cron-cache-rebuild
        - name: cd /srv/journal-cms/web && ../vendor/bin/drush cache-rebuild
        - user: {{ pillar.elife.deploy_user.username }}
        - minute: "*/5"
