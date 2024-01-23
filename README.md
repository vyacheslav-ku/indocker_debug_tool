# indocker_debug_tool

### Sample commads:

docker build -t indocker_debug_tool:1 .

docker run -it -u root \
--cap-add SYS_PTRACE \
--pid=container:target_container \
--network=container:target_container  \
--volumes-from=target_container \
indocker_debug_tool:1   bash

### Strace:
strace -f -p 1 -o /tmp/output.log -v -s 64
