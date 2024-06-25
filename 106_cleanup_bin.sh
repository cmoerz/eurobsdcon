#!/bin/sh

# clean up unnecessary binaries in bhyve jail
CLEANUP = \
/usr/bin/cpp \
/usr/bin/mesg \
/usr/bin/kinit \
/usr/bin/mt \
/usr/bin/asn1_compile \
/usr/bin/lorder \
/usr/bin/ftp \
/usr/bin/sum
/usr/bin/whatis \
/usr/bin/znew \
/usr/bin/morse \
/usr/bin/gunzip \
/usr/bin/dc \
/usr/bin/expand \
/usr/bin/bsdcpio \
/usr/bin/xzdiff \
/usr/bin/touch \
/usr/bin/whois \
/usr/bin/whereis \
/usr/bin/ktrdump \
/usr/bin/scp \
/usr/bin/whoami \
/usr/bin/bspatch \
/usr/bin/vacation \
/usr/bin/zfgrep \
/usr/bin/strip \
/usr/bin/ibv_devices \
/usr/bin/atq \
/usr/bin/tip \
/usr/bin/ctags \
/usr/bin/truncate \
/usr/bin/gzip \
/usr/bin/make-roken \
/usr/bin/mailx \
/usr/bin/ypchfn \
/usr/bin/sockstat \
/usr/bin/ypcat \
/usr/bin/bintrans \
/usr/bin/alias \
/usr/bin/zless \
/usr/bin/mktemp \
/usr/bin/zstream \
/usr/bin/renice \
/usr/bin/bg \
/usr/bin/compile_et \
/usr/bin/makewhatis \
/usr/bin/llvm-cxxfilt \
/usr/bin/lessecho \
/usr/bin/ld.lld \
/usr/bin/lzmainfo \
/usr/bin/ibstat \
/usr/bin/fmt \
/usr/bin/zstdfgrep \
/usr/bin/slc \
/usr/bin/unalias \
/usr/bin/compress \
/usr/bin/fuser \
/usr/bin/getaddrinfo \
/usr/bin/newkey \
/usr/bin/jot \
/usr/bin/lpr \
/usr/bin/llvm-cov \
/usr/bin/truss \
/usr/bin/finger \
/usr/bin/atrm \
/usr/bin/mkimg \
/usr/bin/xzegrep \
/usr/bin/udaddy \
/usr/bin/view \
/usr/bin/caesar \
/usr/bin/unxz \
/usr/bin/revoke \
/usr/bin/uname \
/usr/bin/ld \
/usr/bin/dirname \
/usr/bin/ypchsh \
/usr/bin/zstreamdump \
/usr/bin/pr \
/usr/bin/ident \
/usr/bin/infocmp \
/usr/bin/zcat \
/usr/bin/lp \
/usr/bin/biff \
/usr/bin/llvm-symbolizer \
/usr/bin/llvm-readelf \
/usr/bin/lastcomm \
/usr/bin/tabs \
/usr/bin/lsvfs \
/usr/bin/readelf \
/usr/bin/ldd \
/usr/bin/zstd \
/usr/bin/rs \
/usr/bin/procstat \
/usr/bin/lex++ \
/usr/bin/dpv \
/usr/bin/file2c \
/usr/bin/banner \
/usr/bin/lzegrep \
/usr/bin/vis \
/usr/bin/mkstr \
/usr/bin/tic \
/usr/bin/apropos \
/usr/bin/jobs \
/usr/bin/lzless \
/usr/bin/zforce \
/usr/bin/cc \
/usr/bin/make \
/usr/bin/ypchpass \
/usr/bin/split \
/usr/bin/bunzip2 \
/usr/bin/lldb-server \ 
/usr/bin/unifdef \
/usr/bin/ibv_ud_pi ngpong \
/usr/bin/gencat \
/usr/bin/ktrace \
/usr/bin/host \
/usr/bin/dtc \
/usr/bin/kswitch \
/usr/bin/ipcs \
/usr/bin/egrep \
/usr/bin/unzstd \
/usr/bin/primes \
/usr/bin/write \
/usr/bin/showmount \
/usr/bin/asa \
/usr/bin/Mail \
/usr/bin/tcopy \
/usr/bin/netstat \
/usr/bin/zstdmt \
/usr/bin/gzexe \
/usr/bin/klist \
/usr/bin/diff3 \
/usr/bin/uptime \
/usr/bin/from \
/usr/bin/bzip2 \
/usr/bin/ibv_rc_pingpong \
/usr/bin/mailq \
/usr/bin/brandelf \
/usr/bin/bsddialog \
/usr/bin/ssh-keygen \
/usr/bin/pgrep \
/usr/bin/w \
/usr/bin/b64decode \
/usr/bin/ssh-copy-id \
/usr/bin/ypwhich \
/usr/bin/etdump \
/usr/bin/ruptime \
/usr/bin/ipcrm \
/usr/bin/elfctl \
/usr/bin/resizewin \
/usr/bin/kpasswd \
/usr/bin/lprm \
/usr/bin/clang-cpp \
/usr/bin/gcore \
/usr/bin/hash \
/usr/bin/ksu \
/usr/bin/ar \
/usr/bin/ministat \
/usr/bin/mkcsmapper \
/usr/bin/flex \
/usr/bin/diff \
/usr/bin/rwho \
/usr/bin/rusers \
/usr/bin/ssh-keyscan \
/usr/bin/top \
/usr/bin/hxtool \
/usr/bin/lpq \
/usr/bin/fsync \
/usr/bin/m4 \
/usr/bin/ldd32 \
/usr/bin/gzcat \
/usr/bin/sed \
/usr/bin/logger \
/usr/bin/c++filt \
/usr/bin/base64 \
/usr/bin/nview \
/usr/bin/sdiff \
/usr/bin/chkey \
/usr/bin/install \
/usr/bin/bzgrep \
/usr/bin/ibv_uc_pingpong \
/usr/bin/byacc \ 
/usr/bin/tee \
/usr/bin/gcov \
/usr/bin/logname \
/usr/bin/llvm-ar \
/usr/bin/bc \
/usr/bin/zdiff \
/usr/bin/printenv \
/usr/bin/passwd \
/usr/bin/batch \
/usr/bin/perror \
/usr/bin/ibv_asyn cwatch \
/usr/bin/crunchgen \
/usr/bin/uudecode \
/usr/bin/ulimit \
/usr/bin/keylogin \
/usr/bin/unvis \
/usr/bin/edit \
/usr/bin/look \
/usr/bin/protect \
/usr/bin/indent \
/usr/bin/drill \
/usr/bin/nl \
/usr/bin/zstdgrep \
/usr/bin/stdbuf \
/usr/bin/kdestroy \
/usr/bin/gate-ftp \
/usr/bin/krb5-config \
/usr/bin/elfdump \
/usr/bin/patch \
/usr/bin/xo \
/usr/bin/shar \
/usr/bin/column \
/usr/bin/btsockstat \
/usr/bin/random \
/usr/bin/crunchide \
/usr/bin/dialog \
/usr/bin/rup \
/usr/bin/xzless \
/usr/bin/bzegrep
/usr/bin/captoinfo
/usr/bin/rwall
/usr/bin/llvm-strings
/usr/bin/slogin
/usr/bin/tftp
/usr/bin/strfile
/usr/bin/what
/usr/bin/CC
/usr/bin/objcopy
/usr/bin/b64encode
/usr/bin/time
/usr/bin/cal
/usr/bin/ssh-agent
/usr/bin/bsnmpget
/usr/bin/pkill
/usr/bin/command
/usr/bin/zcmp
/usr/bin/vmstat
/usr/bin/proccontrol
/usr/bin/clear
/usr/bin/csplit
/usr/bin/leave
/usr/bin/ztest
/usr/bin/ucmatose
/usr/bin/kcc
/usr/bin/vi
/usr/bin/vtfontcvt
/usr/bin/readlink
/usr/bin/clang++
/usr/bin/awk
/usr/bin/llvm-strip
/usr/bin/colrm
/usr/bin/reset
/usr/bin/llvm-ranlib
/usr/bin/timeout
/usr/bin/pmcstudy
/usr/bin/ypmatch
/usr/bin/bthost
/usr/bin/sort
/usr/bin/lex
/usr/bin/locale
/usr/bin/lzgrep
/usr/bin/fold
/usr/bin/nawk
/usr/bin/pathchk
/usr/bin/tsort
/usr/bin/join
/usr/bin/keylogout
/usr/bin/man
/usr/bin/xzcat
/usr/bin/iconv
/usr/bin/chpass
/usr/bin/tset
/usr/bin/bzfgrep
/usr/bin/yacc
/usr/bin/lldb
/usr/bin/llvm-objcopy
/usr/bin/infotocap
/usr/bin/ncal
/usr/bin/ex
/usr/bin/strings
/usr/bin/addr2line
/usr/bin/llvm-size
/usr/bin/fstat
/usr/bin/xargs
/usr/bin/ssh
/usr/bin/crontab
/usr/bin/mckey
/usr/bin/wg
/usr/bin/penv
/usr/bin/rping
/usr/bin/unzip
/usr/bin/uuencode
/usr/bin/bsnmpwalk
/usr/bin/fgrep
/usr/bin/head
/usr/bin/lock
/usr/bin/rfcomm_sppd
/usr/bin/cmp
/usr/bin/unstr
/usr/bin/locate
/usr/bin/unexpand
/usr/bin/iscsictl
/usr/bin/file
/usr/bin/xzdec
/usr/bin/gprof
/usr/bin/chgrp
/usr/bin/ctlstat
/usr/bin/bsdunzip
/usr/bin/bsnmpset
/usr/bin/fc
/usr/bin/zstdcat
/usr/bin/posixshmcontrol
/usr/bin/ibv_devinfo
/usr/bin/who
/usr/bin/mkfifo
/usr/bin/msgs
/usr/bin/c89
/usr/bin/rpcgen
/usr/bin/ranlib
/usr/bin/basename
/usr/bin/more
/usr/bin/bsdiff
/usr/bin/grep
/usr/bin/stat
/usr/bin/beep
/usr/bin/quota
/usr/bin/chat
/usr/bin/zmore
/usr/bin/zgrep
/usr/bin/ul
/usr/bin/hexdump
/usr/bin/id
/usr/bin/nc
/usr/bin/find
/usr/bin/systat
/usr/bin/unlzma
/usr/bin/kdump
/usr/bin/genl
/usr/bin/chsh
/usr/bin/xzfgrep
/usr/bin/ctfconvert
/usr/bin/lockf
/usr/bin/talk
/usr/bin/pagesize
/usr/bin/ntpq
/usr/bin/rot13
/usr/bin/usbhidctl
/usr/bin/nm
/usr/bin/lesspipe.sh
/usr/bin/apply
/usr/bin/bzless
/usr/bin/limits
/usr/bin/wait
/usr/bin/string2key
/usr/bin/pwdx
/usr/bin/lzma
/usr/bin/printf
/usr/bin/size
/usr/bin/cu
/usr/bin/killall
/usr/bin/mkuzip
/usr/bin/uncompress
/usr/bin/ctfdump
/usr/bin/xz
/usr/bin/bmake
/usr/bin/yppasswd
/usr/bin/ctfmerge
/usr/bin/openssl
/usr/bin/kadmin
/usr/bin/mandoc
/usr/bin/llvm-readobj
/usr/bin/logins
/usr/bin/lzfgrep
/usr/bin/rev
/usr/bin/at
/usr/bin/verify_krb5_conf
/usr/bin/toe
/usr/bin/xzgrep
/usr/bin/backlight
/usr/bin/sftp
/usr/bin/seq
/usr/bin/lzcat
/usr/bin/units
/usr/bin/ssh-add
/usr/bin/cpuset
/usr/bin/mail
/usr/bin/od
/usr/bin/localedef
/usr/bin/fg
/usr/bin/bzcat
/usr/bin/wall
/usr/bin/cksum
/usr/bin/zstdless
/usr/bin/wc
/usr/bin/factor
/usr/bin/pom
/usr/bin/cpio
/usr/bin/grdc
/usr/bin/last
/usr/bin/soelim
/usr/bin/zinject
/usr/bin/crypt
/usr/bin/mkdep
/usr/bin/mkesdb
/usr/bin/ee
/usr/bin/kf
/usr/bin/telnet
/usr/bin/lam
/usr/bin/ibv_srq_pingpong
/usr/bin/users
/usr/bin/uniq
/usr/bin/c++
/usr/bin/c99
/usr/bin/paste
/usr/bin/tar
/usr/bin/kyua
/usr/bin/lzdec
/usr/bin/hd
/usr/bin/su
/usr/bin/tr
/usr/bin/script
/usr/bin/nfsstat
/usr/bin/ree
/usr/bin/groups
/usr/bin/llvm-addr2line
/usr/bin/nex
/usr/bin/clang
/usr/bin/comm
/usr/bin/rgrep
/usr/bin/tty
/usr/bin/llvm-objdump
/usr/bin/cut
/usr/bin/zegrep
/usr/bin/newgrp
/usr/bin/number
/usr/bin/llvm-nm
/usr/bin/which
/usr/bin/lesskey
/usr/bin/smbutil
/usr/bin/objdump
/usr/bin/newaliases
/usr/bin/bsdtar
/usr/bin/type
/usr/bin/usbhidaction
/usr/bin/flex++
/usr/bin/pftp
/usr/bin/unifdefall
/usr/bin/calendar
/usr/bin/du
/usr/bin/llvm-profdata
/usr/bin/fortune
/usr/bin/pargs
/usr/bin/nvi
/usr/bin/xstr
/usr/bin/fetch
/usr/bin/tput
/usr/bin/zstdegrep
/usr/bin/nohup
/usr/bin/enigma
/usr/bin/chfn
/usr/bin/rctl
/usr/bin/rpcinfo
/usr/bin/col
/usr/bin/bzip2recover
/usr/bin/getconf
/usr/bin/kgetcred
