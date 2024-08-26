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
BZh91AY&SY�q�D  ���g� ����������@D@ P;۫t�],eӐP(b���3S�S��M�h�d�Ѧ���$4z�%"bj4�zMS�?Q�z����M<���&I=OQ�4�FM   2h�h   2i�� �d 4�h � (@F�oD�yL��i�hڍ ���44�M i) MH 8Z;^=�I��j� ����J��_F��!C)&��|��q��3r���M�K{w�K7���4j[���:3k��:�`��������*%(DV@c�5G��hSh§վ
J�u����9f�Y	�L5_S���%�:�Ղ�:f��0���[X��3�+\k���D�~w8��&X��+����2�������<�%�����)����r�`�	
�ۮ��K���Yjv*�M!hw	�B�n���m�gV���dVp�� ��11��]y{q�+'0���LM�V�SB�2(�<��! �Mb]X.Q���҆�0B{Lp�*��$�J�cK�D�wL8T�����'�FUY��1��dR�� �d� m���"�r}�j�����}��h�%=c:�P�e���ؤs>����Ȅ�ҁ褢l.�d	eƵ5xGT���bǺو�.y��oyK�7c-'���or�L]���C4>E�m��{dP�̶����4a�q����#3���v��8�����3�o��{I�$��� �'�^ �j�ap/�L��uHܻu�J�%&�
67�+`3����G����R��\�L�P��L4�M���\��TS�dRv\-+��zx�f#bT�'4���	 ��c�V��j���$�!�e��5a|�>��Nbj�é^#�6����(����=�M�(�TLƑkU�<� R�eg���#[���C!���s���l0	�d҄ |e�1�<d�e�$d�K���f�g5t�J�=�t��5CExgĎ�ah���c�Ym#F��4��Z�_K����ŷ��)�RYb���}�p�)/�.�B��0��C����Bj��i#E�紩�S�@�qК2JU($ZEN�)\�G�:-��P1%F����z�<W{4{3�b�	�*���π.��_?8��f*�Y�Q �vf�?����	$�0�a
 0"���@� ���"�(HL8â 