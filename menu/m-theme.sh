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
BZh91AY&SYzٮ�  �~2@ ~���?����߮@ f�  P����`�A�CPz�5=@2���� �ڦ&�4�i�������44�2  a1��=�mM@z��� ���4Pj�Ѧ��i�������44�2  a1��I���=MM=F�z�6�Ѩ1��i�!�mK��c�9a3�A��53@�yũH��|����� ��?.\�'����މ�+����kr��i�_]�+�����Ƕ�n�o��{m)���؝���rؖ���v�o8�33��	L٩t1H�r^��L�J���J�f�L|@5 ��	��&��(R�����x�jߚR)JO#=����p&��Ӏz��k��/ ��d}=���w�;f=���w���e�@ �(�ďF�Sz�*1�Cm�xC�@�������k[m�vǺ4^���
A<�`T��Z=�����U0&��"m��际J�Ú�����������D	"�S�9mώGYrGq�ls1��Tͥw��_]�ļ&��l��f�x�Qs���E�E� ��NFV��1��4e1��C�p� uw,�MK�/9ZȒ L��2�4��	9��@��@�H�Eu��.�cR�w�n ��.S)�2��)��Ay�^���7r:�.��yN�7��gJ��f�c�i{�.��b
n��RH�ҹ�ҭ3-��q�E;.�5~� ܻs�T�G�����_��$-���C��ۚ�:bU�sPk8�=��|�!RV����Y+��雓��
s`�4^Tx<>�lU�%w}AB-n��6�n��TT��'�$B��X��A�k��� �a�|�-@�6m���*���@c�ơ�D�2 VLY�8��\Zi�Δ1���(yN�o���$��HW�ڨ	 ���Y�/���2�A�:*e .&����"�(H=l�H 