# indocker_debug_tool
# indocker_debug_tool


Sample commad:

docker build -t indocker_debug_tool:1 .

docker run -it -u root \
--cap-add SYS_PTRACE \
--pid=container:target_container \
--network=container:target_container  \
--volumes-from=target_container \
indocker_debug_tool:1   bash