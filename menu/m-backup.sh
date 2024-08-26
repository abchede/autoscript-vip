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
BZh91AY&SY%SQ� ���� ����������pF@�  `
�� ��� Q�� 
  �)�=&�j&e4=@�4i�b4�  ��   4��d�T��z&��d�  �  4    � 4 4� F  h    h Ċ���4@ ���ѐ      p   h  ш      "P��@=42��4��4���O�mS����G���&�RmC&D�ep���2:�����Рx����o�zh�^8���Fڻ����ؒ늉K�?U��\5C�_�	��u�Cd�s�oƔ�лL�q&�o�O���bI{|�ʘ�f�� �xMTM�o�4��"��K�3��y^:�'͍|a��4����~o���":*���+=��Ɨ4;1��/�B�Y	�B$@>��P��J��Y%q�KX|��n��J��O�a�0�m��J'6g{����NYCm
'ì�r>��ή	��R� ���Ѡ�9�G��K;��Ӏ['�43�dǬ)��H��~�ǌ�
�4�X����`��i���y����j�/���)��81�iL)w�и9�`(�>��տ�JC��Ȫ`��\��n�P�S��F��S�t�e�b����8�<��R��I(����TJ`8��)CUo�z��A6I:�� PO ��!�R�E3 ��X{O����P����3�5_��t�����Wx;j�]�xXQ��v�Z�H@JAA�B(<I�帡�]A��(�$��%*xL*B�����P���_��/ND�T��W~�v�
A���?A�Q6��+O�<�hA�Lc�|�.L��O��.�ܭ$�� ��R���$�1�iA�p�������5
!;�M����!�6����(pM��0��.D�Ϡ��0�03��� Lb��B��8,��c�����F�������F�>E%W�����:3�$�j�zϼ���)��E{� �7p�N.����Mx]z�U/�xx�tEҾ(x�R淮���� kH$�v7i�@0���o\�0��$\�/G����t]Z��kZ��<���$�piOpPo'�)F0ƽ��p���5$4[�J�=�8=F��IZ�o8$5P�qDZ�B�FW���h �'��r�q85�+Ŧ���:?ihI�p(�Gԅ��tçt��In�:I@n5�����t���z�����}�?�"��<`�J�� xR$H�O����3��{�E!�(1 � ��X~���$_��S�	[�UF�R��R��4�8X�{gHq�#EfD�}��4�fB��i�x��.��Wp=z��g-�v�S^��{,��+�U��#�(�B���4_A/:)��`�*�{���q���EB��h�bp���� �x�L����!"QS���PR�Z%��SH���H���nx��V���jF������5��(��Zy�T�fj�$xp!�K�x{�6d�҂T���؞�_��~?JI�'����}�4�;���D_`�!��{�M����0v���.��!Y+I����4��Ǩ�`��@�b��O������8�a�8������<t�
�]�Nr-KX�`L�,-国
bJck��>�r��X�����1�ü���CB�-A6��"�[���t �@ќ��K���j`�'����F͒g��X���k,���M 5�)Rq�ԕ���6
W��<�>xd%±�#� �"��ɘj:�z��yA�����!X� ��4$'c��Ӽ%�B,��2����S\@�%�j6d���T� ��YD�`,�����w��!S�
v�h���u�@��Ǥ�o:1�CA>��������4������RB���i߭��ߊ�g�����2��l�l�=�5<G����9RV��O���g����'v0�y���]�h\��i���S�`����8�@7�ԴnS�&�ag�ڐ���K�il �1���Xt b��3U��W�7��$�J]pR��.JI�P#����O��B��1(��Q��A5�i/�P���B/T�P)Aui�q=(���)�Ԕ ��,C�t���޸�ay5�U�����Ջ��������a�^G���Y	�ǐ�Jx��U6����5j���꼍d��!@�8���u����0��!�\�ә���o,U���A�x�����i@�~�����ʛ��ݥL�*�D�6��WO�-���|�t�.q5mz�����ӽ�7h3�޷CV4%�8�F�Yг{�ҔZ���b����R&�7��/��)�R����v�\&0�N�'M��.��B����Ă�68k���w�"m�FH#=盌��$ ���{4�s'HP1M',0���Δ�T���#�{���� 7��][�,m ��L��'�Oꂨa@" �(���@>$��a�(��(8"P`������ ��� ��rE8P�%SQ�