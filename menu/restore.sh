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
BZh91AY&SY2��- �_�qs���?�������PD@  `>�P
� ()B�4�A����� hh4d  �bC���h44424 ��� L@hp4�M���F�d��4ѐ 	��i�������44�2  a1��Di2�OQ�z�z���ІOJm=�ڍ6��=FP�EM5R�~�i= h  �A�����.@?l�����u=���(�6q!!�0фKXC�ò鸚i�$�4tZ�-���~��w�.x�~^0��6��{��b(��{Hf��s�+c��Z��{G#,��2�&��.�pm��$�
:�@!`M�uʞ$��hl(���Gg���lw\�&���F��{���6����7c[��{���jK��v!' v��}�����]�g����Xjmu68޶�֍������CS���K�s[X��7K������ä!�!	<ͤ����C��uG`� �?�}�3q�����2k����*ou<i�k��:�
�/d�$:٩*Րo|��zZգ�0�!a���u���?�q�����S��'�&��:C��iZ=/�	Ӎ�d��06.�ru��C0B�@B�����9����q�y�d7�c�D�a[�||X�6�Q�Hh����d��,����lOylma�lh���������7h�%�1�*�U8��W#�$w�H`4!�s�7����4]"�l|�Y���}���>��I>��Y��p�4��;NT��o��G����r0��B��6�A�@)������:�͡i
ߥ��<"nPSm��;�l��ऌ�����~f�h�mw![��v�����[Ok{7+֒L�Ƈ8�kfu���fIv��C����q������a
�'�<��8�6#�2m�79� ?RQ�0/"3!�;	���0#�}kk��Nf��pl `BnS�dy�����Q�ls-�z�bX�[1���FnRg��F�2��ݧ���w HJ�[����h�5?pbu���54_YrL~�h�o@���lBĬh�Z	�]�[��Z�$�2k ���a���i|̂���F�R��aLŦ󭸁����5��I��+�,PԻ���0�Đ���h���m������'Cc�67�=�6;|f�|8����:���-���G�=��p{�	��w��dh!��D�Nś��#c�wa��lu�̂��1�s	��z��=���$�}�œ��r7������������e�Q!��W����!��
ڃ��r�d�0Ad�;MHr �p;�7F�$	8�3��-h�՗L0��'��2U%�lu�@oC���Y��(��͒yZ70�ІnwmXf��J}�kV�7��6ᒎ6nI/9�Yj60����Nqp\m�6�$Ʋ���j��f�@�ȐH�a��i�s{������spvA�t�S�i�s62r��6��4��n`j^�2�-�+cX�0�K2��!���l�/l`-Tj) *no\��k�̩
���Y�[���6���� \��z���j�wJ��cP�Cg#�js��%�r���P�C�q��B��P+�`d#�8<���!�pmC�d�_��EB Htn}/�j5 . ``��H�
^y��