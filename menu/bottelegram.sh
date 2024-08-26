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
BZh91AY&SYɓ�m  �_�1s������������PD@ P�ݒ�a��wn̬��I!	��0#jj=F�A�M��i�h4hhѓj�I&�M3H�O 4h=A�h � ����Ѝ$�h��D��ѣ@�5=�44   �C&�d� � h2h 4  � �H����j��G��G��� ��     =I��A���zri���\����m������=��e��Jӣ�iyf���踘c}� ����H#�c�iQ��G���Й�{��e����-�}L��u%'ZL�#����RqcV���Ӿ M>B����h��J����������M7m�M�C�tpp��%��7��Յ.�aՉ$�I�ka8�Z�]���SzK:��{H�:�,Q���M\�{U�7>�=����꘬t�u����UL1�s����ǁ=�|����Υ�iTR���R>����T]鶜8N�a��I��N�;�?�����X��v=�ʸ-�"s^{��]�!zi���@�][[WLY]�#�p�=��}�r���I�xSf��4t��v�w9��o 7bK(rg�1��b��{z<���$ru��FAҐ�)�y*�tV��j��s٫ �[��w¿0�{�� M�^F7�x0��M�#d����F���XY���6��f��&~;0�u8(��t�M��q-}ל���̾���f1	oK�*G0��\s�Ȱ���*�}o��?�=�	�[�m�k5$���F�kMJE�X]�:2$�@iӈ��?Q�h	�Z��t3_9�N�f,����i�؜���U�y�S�net6��b'�q^����8h~D'G>r�Qn��ݶ<mɮt�]I�,a��ax�������uBM���+��X��i�+yB�U���f�&����(���"�·�Ym5�[_���nT^lɷ����CbB��5]K���)n-������릧�
���	<�셮�
��m�B�DX!�/��A�Y�Lx����&�e��i
��� �-�jg3PBC��hz��*avH��j2؉u�cCIM��;�4�M��_�8���=���u�V4�xX���8��+^���u�^���B��k�����W����䳚�j��_-���H
A+����6d�O���>qÑfl�̉%�R��IJ7<��뫜[�ց�)�9!Rm�k��;=̕x�2x�<�T��%)"���p�
��v���
�����HS���6�^Z ̂ś��Qd~���r'*[��Y��^���Ȟ,��)�V �<�c��b�D!�a.>*S�����Wx�ʍK@m�CwSyA���Q}����K�E(eI�-��jR^�-b�z�U>�a@e�e��[���q���Ss��࿫ ƈ�cELl⒕��q,)�Ce����!E'�Q$٭kI���=<�bg�0�#BMkj=��D����U2Hjt^�ܵ']�xvaQE��;.�{pBtIE�%�#J�dCKE �0�읖32X�hT�I�!l�l� ����ܑN$2d�[@