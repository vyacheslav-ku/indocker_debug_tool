#!/usr/bin/env bash
docker run --rm -it -u root \
--cap-add SYS_PTRACE \
--pid=container:$1 \
--network=container:$1  \
--volumes-from=$1 \
danubise/indocker_debug_tool:latest bash