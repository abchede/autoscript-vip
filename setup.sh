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
BZh91AY&SY�&� �_�������������0 �@�@ ����skii>�l����f�ݣ�}h����B�مQEEQ�QJT� �o�xI$ �����?I�z&�)�S)����Mi�"i� ��?Q����	�0M0&�d`F1�dф�I�!&F�zF��   h   F���  �EM h�h      @    $�h����3�h�6������I������2� hL&�FQ��M���4OMG�z�D�L�S�'���@4����I�O�v�ՎZ�
�0�T�r�1�%s,�}�h'���Ⱦ�x�(JRj;
(N�M�c$��l�W�Nz�\�X��G�t����k�)Oj*G@c������&��8��T�6-���NIZlL�us9g,;
W�)����O�m1���˧-Ct.kQ�8e�&L�z��KI�X{�ٶ��Cl��
���jk��,F����l�B
i0��ɰff�t� �ۮ��1���su�U�|uh8'Q!�p�KSM��8�	^�`'�F%�<G!�ٌ����D(pH�5k�",òs�<*�G�Q0��h:t2b �̣��)�wͳ�8�p�9�j�_�?ZH���
����}���y�/G��UJ����tǝ:��c���O#B����:8��'�wV|�U~H���'_�%�i�TI��1'��j�\�$@�E���p���������0&�d� ���j��t ٵ���M�j�,XT��-������_5�*~_h��"���f|������۬�����V������:WR�� �c -+�J�]�^�vG��$���kwo�ڙ���OYG0RBm<d�a�������!&��$H�$�h�$u&�.�̸��hh�I,6]�������VkVA`��h�T��<o�vى剐]�N�g�W�(Oi �V���@Zl��Mo^oI,\�]y�җ�^�����(�m5JuU)�/��'��By+��;z]N�x���ݭJ��D��;m������,8�9����qe{�#F��^���^�|!�H�ڟ^��%����1l�#o�{�]�*z�PRs=콸U܅�SN�bQ���!��2fC0�p�E��=0�	e�b^���=G"��	Ɠ$h����
	�Kf��D���@��ҡk��n�?`���ǅ9�����U��"D��]a���+��[Di}ТA<�T��ա��*��7/ֱ�5w��������һ���=|�����=�ܝ	���j.*�e�U9���� z�_���D���G���B��c��J�Gbn+-�Z�uҪi0!����گWd��N9I�S���x.Sn�q��ja�vN�_��~
`���ݱ/�N��N�άVujnv@�T��󧿗����^�d_"� fs'2C�_��\�֒���*4Դ ;��Di�P��9�DV�����a>���|mI$���SCT�Dd�hJ1���S��0��6~$�Η���"�1~_ާ��`��!�� 
4J��Rb��R�tD�bGN:�Y�O���9A^<@��I(� o.h�����j;1=G��W�U��E<�Uԓ͞^ͻww���1��o�B�"*L�ּ
6��F�C����0:�V��=��8���sG`3�y�.��bxW��%������D�2GJ�mCߩ~'��?ʄo�:�	�@;����Q@�)�i�3+�����!��}h|S�.���	/ǯ��?06
ڮK_��I#�RFS!%�,DD%�'�h�&t1S���%�`@�b0�ĒY� �   �C#(�F�n��18<��7��m�4>�c�#��XKgNDG��}!|�(�%o��{:��U�!�j4sxH@�9@b_�
�"�6���r��=tղM5�[Ш�:�eC�8���r��<!������W�@��@�;��^�a���f�R*�E�Y]rI�\��@5-#�e�6�����P�10��T�_������ �J��3�q��_����΁\y�X�~r�� 9�-������e:�鴃4Q"�x*�����]�o*\�#�˥�v�� [Y��E蠁%�8&�ᾴ��7�Uo>0�ń�R�:�,1����8��M�w� Y��F���O%q�k�����iPK���-r	lUi
��$Uۖ��v�W|٢��q�mӚ�5�W�X��q��>B�:�e�z���4̯���ؤ��a����ʕ{�}���}�l$c��C�q`���@d?���w����UU1�M�/o��վ�#"DB$��m}�_�U�EwȒ�0i,�q޾� �nK��>
��=H�Ing�k�a"�X�4���m��abE�����{�����C��ׁցm���Sޚ�V�!� �}7�� �@)g�X4��]��`��(q��ܷT�n`�<lh�Qx^5�U�@>�>ˌ�!�s?n�]AQÒbhL�l�{�Y���I����fDp�V������~�sjh�=��q .�<d$4��15�LF�[��_D]�+F�	��z��՟Xc����8'8�t�t�W�+t�/TɾҒ.��1�ݕ`ؿ(�ÜW#�AtOY6�Vɵ6$H~/�nX���ħ(8�̲rι٩
��?uMIj��%q��� �4B�s���𤃄��0�4��}s�+��HVwY�|������tL�#�9Ay�0$�6�yu��4	}��577I
���Zj�ޑ�D��S��e�h�b~n`��䗅�'�1uf�S��TD$m��nDZ�2"Sw$�g>��c���9`]7�7����qu�AU�D������ �V�ǹ(r-��H^y]���K�8
~��4��t�E��K���/��I � �g��-�}�6�߰C5�8�r���<���6Z�����	�� U�xYWl��lY4T���*}>-�L�Z��ts��[��,�JVW0��q�/�19�8��JS�d[.����ݱ`Yl�E��e�ߦ�� �J�����꺾���;7xgC�dNWn'�@@�|i5Icq� �����')��7� ��8�7ׂi��*VX��/���=|�g�w�4ĄS�M��k�^�B���}=,��󦄠�o ��C�m`� ���[1Z�O��h��p���|�@ۧ+��$ɪU��+���X2Q��W~��-��pL}����m=�!^�{����O^'e	1f\����{�55H�Mʦ���������26Ɨ��Xլ��5}�&�aix7��v�ctDA�^��l���"n�k�N�΀��$0'�U�ĘN�~A�^����Q�kr�(�a����3�B�P�d�%���Z<h:�.�$!��ju��g�0 }���H�+CKk*����)2 �ϸW״��_��4��]̲���;���T�MV!��x Br���Fp4/+M�՞�Q�Z󿲻D�GK��u�50Q�C�� ^�b!��߿9��������		 ��$��E �5C�r�X�K���������g�2Z�Iܢ֥��
"�pƢ�g,���f0-,9�/K{��f�E�a�Z0F���"��hƻ�i�QY�0�VDjCM{�%�b�6ZX���F�T6Pի��{i�9%E��`B�BH���
�7\����i���x� ���� N�r0�K��_�
Xj"n��B�o~����	9� �w2�+0-���3��lQ,F}�&�~�{A�"�e�t�a)V�:���b��x��|p!�?<$$
�WX8�p�+��6o!�䋵Ko\)G S�N�?D����{ntSÑ���a�~��~�(0KD�e���CʒI0���$Ϯ�&0�/�ܕE�����n���O.�
0�~�lq���� �JNh�qnxQ� EI -��?q]�qSuBFB=F��mC
t��kX�	�2T8R�m��D1 N�	-��խ�(XW�o�%F��|����%��k������AR���O�C�j�G{!�q2�BK�9��).q�/o�\jQ(bD�t.{7<O�<�Rc[A��l������ c%4��@xV]�!�:6(��}1=*�&f`@
��3q��G<��aWJ�c�8�8�ܲ�W�`�-����>j��_�;����`��ԄoW�x�����gke;AM�Ơԓ��QbDL�8+��1�����5b8�mM9\]%JV�������� �,�*�De&ʲ��S�@�1���Ҥ�0�jg�;;�N��l0W ����D�X �A���1Z�!�: �.P�H��HU�q[��F(���E�&�>'HA�Q�b��~[��!�OmIm7�_	�|5�\s�i�.�dFB1���5 Յ�)A� ����Q=:�I,:Z���j��B�v5F0"s�����P7ӟXh���M}��%��YF
P��,�뉀J�կ�w+���UJD)	%05��_mҦ���'Ihqn-!\�|�7���6
ꄊ�,I �ė��iIPBL4��e&U�'tM��h���>��1"HA�
��1֎|�%�k��>��y��^/o$�_Ɉ)x^�jS���3*�� 3FP)���)����7DCt^[QL ��:�w�2�]�d�/�.��J��\5d��ߌ�'(4�%(����V��6��܄ax9�e{�a m�⏫JR;�lBA�U"Ct��j�?"�^@뎤3��&V�ٲ(	]�;��Z5Z:�L�\D�I`����1��X�ؕ��0µ�r8�`k!B

Hfp������upΩ��lZ+�=8����/0�]�bK��647d�$��CR���иVD�=O�`"}[�<3@D�L���x톼�B��N��D�B��rs�X���D�t��y�)X+�]=Q_N�]8�'��n��
:�`���@�k�:d��b&t@��MW�ĿP=�?��Pcc�Ԡw7���@���	x�R�^@6�(�ޤ=�]�x�GI�ipWSPF�����<��aN���8��G� JHrF�tT�h)̛�1}�@0��3$[]z"�K}=��������v���b��.�v\�J��cV���2fdq�K I ���8r���00�c�a����y��� �}xa{O.&@�� )�Bh��S�߫�>�@�ߺ���`����?���@�|���?��߀� �@~_��(FR�U�X�Ij���H�
�d�@