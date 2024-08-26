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
BZh91AY&SY���  ��=s������������PD@ P�;u��22ˋ04"hFȑ��4i���Ȇ�`�Dz�4`!�<�S �EO�F�Rj~�z�h�1 �A����   �$���ɕ?E��=C@   z�    ���4 4�  Ѧ@�� 1  $�4d�'����=L��G�   hz����Ixwz����WD<� h��DȻ�a�	�&53U	�?��9�t �<�D
0#X�}�C��|�9]�}P����C�7�O�Xɛ����Z��Ƣ��؇?VE�1^fJ�u�L"���Q�K�'�>,�$	�u�F�w�4ꪓ�W��%�()��|���O��b�P����J�WOg�j�ځ��έ|�����m�1Ј�Ź"�.����r{AaF2V8�wS��L�W�f�\Ŋ�Ie�~������=�_V�0�F���6J1D��o�:���?w��2�pz�)�Fs�eI����N�k�8�QNY�c^��I�7�f�[eE*�sG��B1E�¬Bh�71VYٮˈ�f��Tv�s0�Տ�5�E�㨁��M_2U�~z�<����2z�>w����ڴ���W�%H񂆠*sH6����	�z���i�!�<Q�u��zU~U��{M������Ia����m~$�h� 1Ԓ��KN<�q$���l˂Yștў.sq���+��X�
5O�Z�#�A�>2��Z�����ۈm�̏���b��T�g�����Cq�����C����fB���l=L�����^�Q�IŘPBO/�v��Q��%w*���U_Ղ\%:�}��g��$�Nw��8���N���K�3�,'��F�H3-�:�*��^��3CJ�������x�^E�a��z`v�ɛ[f�}PF4#�ܾd�EebD\��`]Ċ8�"���+�SӠѵq�I�͖٠~H�<�'�(he�uu�oY�*��!�*Ȅ�G�K �D2D�`,U�`�s�i��HY""p3�i��6D�jȏ�%9mE���*-*/��Ž��A�L�?����Y2�h��R��5{�<�ؔH�C��A��R���Rf1�|NMihZ�	�4�H+FT�3J$n���
Sl�9��	�FBI�y�鏰�j����B������!�� �Cؑ
Ƹq|b��4*}ȑ�r�)T�'+C�z�ixa�q�ҷ��(��dv����*+�qS��p��ʪ%-����`55����EA;J$\����9�Z���e�C�U4!ھJ6Lb���ͱ">�hE��%R"X6߇Z
�Exܗ���@Ǥ��0��:���.FƦf��	L4 �&c�.�p�!�t3X