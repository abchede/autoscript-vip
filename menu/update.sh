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
BZh91AY&SY.�\+  �߀ ��%�*����P3<$@ U2�4h�d@�i1O�    A��4�U"z�!� ��   � & `    T�&L�4���44���"��D�)m�n3�SHp��bI�H�LJ����5��Ia��R���+1 B4 ��� ��[�RI��p       ������Z�h�:�O�<�-��&~����1gG���ܳt`|z���du��� �q�����)�UW����']�}�r���������ޞ�g�ײ���ѡ~zz�{�a|c
|4��T���eNĒ���VKS
�!B�"�K%��XjI�*��T�h[�����>��:?��̚��Gt���c��_:^����d�VP:�n�'\������;)T� �HVUUT����U*�07B�9kL���������ym��x����r�˫�
�Zo�{8�խu]V�ڗ���2o~ �l�N�*]P3I3�2���ERI$�m�� "�Y�x �@����IEQ&�ZT���d�o��6�^֭2�}H����JJ���k�{%�A���v��O��9�1�[4���G��bdV��^�E�l!tJI3MS��*�R���Z�R���WJ�T�b�L2�&��nh���)҂���i�A�&s���R�T��|���uL�h���,P+d��]���h����E��|œ��EQ��A�^Z�aƛ䒍�딁�'zZd���jt�V�l�h�SD�M��\�zg4��0�P_1%l���v��k���K@�x�N��5Uv< v܁� ъ�m������/���.sϤ�fsJ�0�!���ܑN$�W
�