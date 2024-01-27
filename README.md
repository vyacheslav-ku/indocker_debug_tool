# indocker_debug_tool

### Sample commads:

docker build -t indocker_debug_tool:1 .

docker run -it -u root \
--cap-add SYS_PTRACE \
--pid=container:e81879db61b2 \
--network=container:e81879db61b2  \
--volumes-from=e81879db61b2 \
indocker_debug_tool:1   bash

# File location
Files from the target container will be placed by path \
/proc/1/root/

### Strace:
strace -f -p 1 -o /tmp/output.log -v -s 64

## Bash command
./iddt.sh <container name>
