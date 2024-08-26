#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYc-&�  M߀ h����L?�ޠ0X		Q��Қ��   yC��A�@ "�SC(�4124�##ԿgK�}N�JRu�P.��	�G.�i��Wp�E�W���&ނ3e
�B������.�{�6N���:,$ŤR��Zֲ��)�r�-�THXY+�\��WZ,���^B�E�+�[���m�j>�ziWܡd@��˄�Iu/.�@��,:�D6`�HC��`�Yz 8	�,e��k����MH���=*j9�UUUU���kKq �q��(<}�º�W8 �h�B�m1��p��"�(H1��v 