### Fix intermintent error at supervisord (spawn, exit, spwan, exit)
1. First try:
- `sudo unlink /var/run/supervisor.sock`
- `sudo unlink /tmp/supervisor.sock`

2. Second try:
- `ps -ef | grep supervisord`
- ```root   2503  1  0 Nov19 ?  00:03:23 /usr/bin/python /usr/bin/supervisord
- root   21337 2556  0 18:15 pts/8   00:00:00 grep --color=auto supervisord```
- `kill -s SIGTERM 2503`
