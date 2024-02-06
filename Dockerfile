FROM centos:centos7.9.2009
COPY iddt.sh /iddt.sh
RUN \
  yum update -y && \
  yum install -y epel-release && \
  yum install -y bcc-tools tcpdump procps nano mc nmap-ncat strace ldd ltrace hexdump objdump nm gdb \
    sysdig readelf lsof strings pstree \
  bind-utils openssh-clients iotop sysstat htop rsync bashreadline \
    statsnoop opensnoop syscsnoop syscount \
  oomkill execsnoop killsnoop net-tools dtrace truss less curl wget ethtool  && yum clean all

