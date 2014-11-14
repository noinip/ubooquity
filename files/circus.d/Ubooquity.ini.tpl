[watcher:Ubooquity]
cmd = java 
args = -jar Ubooquity.jar -port {{ UBOOQUITY_PORT | default(8085) }} -webadmin
copy_env = True
user = nobody
uid = 99
gid = 100
working_dir = /config
autostart = true
stdout_stream.class = FileStream
stdout_stream.time_format = %Y-%m-%d %H:%M:%S
stdout_stream.filename = /config/clogs/Ubooquity.log
stderr_stream.class = StdoutStream
signleton = True
use_sockets = False
