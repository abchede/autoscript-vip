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
BZh91AY&SY�� ��E� ���?�������@D@ `�x:�L�K�:,mhJ$А44 � �@ � ���S�� �    �4z�� 8hhɣF�422@ 24  � I�I<�4&FFOSM2h@ b  ��D��j��J~�zj 4  Ѡ    Q ?A�Q=)��&�0����Ё��@�4��a2]-�9������v��w���;ͤ�B�Y�������t�\�],����8"\cI�O�����D,�Ҕ����-�FFAQQ�d_Y�@`8 �!��^�Ĕ�b刅)-���hT�JG��I��҇9.�fyj�3�U�)����*�05^Zt��i��7d[?����8-��6@�0w�%��� �iod�_��UUUUUUUUUUUUUV���Ǘ��cc�z;��V7cCv����*�g*DE6Q	0Ya_�<�^�e��PPQAb�h��A|�.�QE2��S8�sM{r��Y��s(H��+�T�Q)`Z��BʌTY�a�"��`�e�Z ɬWp��ڣ���$�z�*��ɖ�ɮ��ř����s[BN.�����
�EZYӨ��a$��ր�0Os����77�fR�<�_�ME�q���0��Mo*-u��[�2r���C� ķ'Vd͸a��Ȣ�(��(�pIE2Cn^	(�_	�QH���,�<��)����O[im�{�I��y�����Y�<n�����t��n�<[�I�p�K��5��;�Og�<�~�V�0��t(���p4��(����2F���Ѵ������-��	|�$�]��R5ѐ��ϿR�nF�D��
�� ah�D
Sɭ?)��d�N6�&p"|���d��m��w {����G�S$�t�tC��B갅i$�h�I��G�ph"�F""J�c�5v?[sYcf�Z�A�*7G���b��*t��k�͈ƈ����5;��abZ��~��SZ��;��m䃊I$��b�Ij��<�� ����K�A�uk��q�.OpI�Ё���Qp��	8���ʈ����\�(/��P0�*M�J��0,=P^��^C�x�Q�3 ?�h�2�}�Z�g|g��x����RѨ� ¤@9��7f@�8�D�� \� ��ܕ]�4Yua�2.���z�!�������Z���I �to��W��ӆ�c�b�$cF1��&K�u�@�T8xҢ9��:���YV4�DL�dSS����3Ɋ�i�)�ė8"������ �]��Dgt ^J.J�Q���+��	LF��{�	 $��2I'I����qE�bp�;[�i�F33zN��
ֺb�l>ND��P4���UZ������6z�@t�$56D\�/A��W�����kmAq鍀K���[�Ǆ�$�"o,��P/E����ssr3sh.�/�ޖ���ⅉ��21�c+1Ul�$�&�$�1���j�S���/C�è��@�*��gٚ������IB\8�L�]3܈��86�(6eq����SP��| N@��� ���H�
��6�