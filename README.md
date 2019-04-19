# ffmpeg cctv system
The purpose of this repository is to provide a barebones cctv system for recording ip cameras to disk without modification to retain the highest quality videos.

# Requirements
  - ffmpeg installed via whatever
  - systemd host (not really a requirement but theres an example for it if so

# Installing
  - cp fcctv.sh /usr/local/bin/
  - chmod ugo+x /usr/local/bin/fcctv.sh
  - cp fcctv\@.service /etc/systemd/system/
  - mkdir -p /etc/fcctv
  - cp camera1.conf /etc/fcctv/
  - #edit camera1.conf to your needs
  - #repeat for n cameras
  - #edit /etc/systemd/system/fcctv\@.service to your needs
  - #mkdir for your data directory
  - #mkdir for each of your cameras in data directory
  - sudo systemctl daemon-reload
  - sudo systemctl enable fcctv@camera1
  - #repeat for n cameras
  - sudo systemctl start fcctv@camera1
  - #repeat for n cameras


# Optional
  - setup a cron job to delete video files older than x (something like find ${data_dir}/ -name \*.mp4 -mtime +X -exec rm {} \;)
